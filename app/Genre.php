<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Genre extends Model
{
    public $timestamps = false;

    public function Book()
    {
        return $this->hasMany(Book::class, "book_genres");
    }
}