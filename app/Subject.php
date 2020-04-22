<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Subject extends Model
{

    public $timestamps = false;

    public function Book()
    {
        return $this->hasMany(Book::class, "book_subjects");
    }
}