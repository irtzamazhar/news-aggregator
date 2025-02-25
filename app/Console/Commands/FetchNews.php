<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use App\Services\NewsService;

class FetchNews extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'fetch:news';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Fetch latest news articles from APIs';

    /**
     * Execute the console command.
     */
    public function handle(NewsService $newsService)
    {
        $newsService->fetchNewsFromAPIs();
        $this->info('News articles fetched successfully!');
    }
}
