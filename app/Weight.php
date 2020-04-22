<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Weight extends Model
{

    public $timestamps = false;

    public function Book()
    {
        return $this->belongsTo(Book::class);
    }
}