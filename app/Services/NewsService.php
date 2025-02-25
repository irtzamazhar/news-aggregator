<?php

namespace App\Services;

use Carbon\Carbon;
use App\Models\Article;
use Illuminate\Support\Facades\Http;

class NewsService
{
    private const SOURCE_NEWSAPI = 'NewsAPI';
    private const SOURCE_GUARDIAN = 'The Guardian';
    private const SOURCE_NYTIMES = 'New York Times';

    public function fetchNewsFromAPIs()
    {
        $this->fetchNewsAPI();
        $this->fetchGuardianNews();
        $this->fetchNYTimes();
    }

    private function fetchNewsAPI()
    {
        $response = Http::get('https://newsapi.org/v2/everything', [
            'apiKey' => env('NEWSAPI_KEY'),
        ]);

        if ($response->successful()) {
            foreach ($response->json()['articles'] as $article) {
                Article::updateOrCreate(
                    ['url' => $article['url']],
                    [
                        'title' => $article['title'],
                        'description' => $article['description'],
                        'source' => self::SOURCE_NEWSAPI,
                        'author' => $article['author'],
                        'published_at' => $article['publishedAt'],
                    ]
                );
            }
        }
    }

    private function fetchGuardianNews()
    {
        $response = Http::get('https://content.guardianapis.com/search', [
            'api-key' => env('GUARDIAN_API_KEY'),
        ]);

        if ($response->successful()) {
            foreach ($response->json()['response']['results'] as $article) {
                Article::updateOrCreate(
                    ['url' => $article['webUrl']],
                    [
                        'title' => $article['webTitle'],
                        'description' => null,
                        'source' => self::SOURCE_GUARDIAN,
                        'author' => null,
                        'published_at' => Carbon::parse($article['webPublicationDate']),
                    ]
                );
            }
        }
    }

    private function fetchNYTimes()
    {
        $response = Http::get('https://api.nytimes.com/svc/topstories/v2/technology.json', [
            'api-key' => env('NYTIMES_API_KEY'),
        ]);

        if ($response->successful()) {
            foreach ($response->json()['results'] as $article) {
                Article::updateOrCreate(
                    ['url' => $article['url']],
                    [
                        'title' => $article['title'],
                        'description' => $article['abstract'],
                        'source' => self::SOURCE_NYTIMES,
                        'author' => $article['byline'],
                        'published_at' => Carbon::parse($article['published_date']),
                    ]
                );
            }
        }
    }
}
