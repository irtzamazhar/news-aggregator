<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Article;

class ArticleController extends Controller
{
    public function getArticles(Request $request)
    {
        $query = Article::query();

        if ($request->has('search')) {
            $query->where('title', 'LIKE', '%' . $request->search . '%');
        }

        if ($request->has('source')) {
            $query->where('source', $request->source);
        }

        if ($request->has('date')) {
            $query->whereDate('published_at', $request->date);
        }

        $records = $query->orderBy('id', 'desc')->get();

        return response()->json($records);
    }
}
