<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Http\Controllers\ArticleController;

class Article extends Model
{
    use HasFactory;
    protected $table = 'articles';
    protected $fillable = ['id','title', 'date', 'link', 'images', 'category', 'news'];
}
