<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use App\Models\Article;
use Illuminate\Http\Request;
use Orchestra\Parser\Xml\Facade as XmlParser;
use Sunra\PhpSimple\HtmlDomParser;

class ArticleController extends Controller
{
    public function get_articles(){
        
        $xml = XmlParser::load('https://www.antaranews.com/rss/lifestyle-fashion.xml');
        $items = $xml->getContent();
        $count_article=DB::table('articles')->count();
        if($count_article>=20){
            DB::table('articles')->truncate();
        }
            foreach($items->channel->item as $item) {
                $dataItems = new Article;
                $dataItems->title = $item->title;
                $dataItems->date = $item->pubDate;
                $dataItems->link = $item->link;
                $dataItems->description = $item->title;
                $dataItems->images = $item->enclosure['url'];
                $dataItems->category = "Fashion";
                $dataItems->news = "antaranews.com";
                $dataItems->save();
                }
        
        $articles = Article::paginate(20);
        return view ('articles.index', compact('articles'));
    }
}
