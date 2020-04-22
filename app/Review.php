<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    public function Book()
    {
        return $this->belongsTo(Book::class);
    }
}