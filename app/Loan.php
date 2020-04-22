<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Loan extends Model
{
    public function Book()
    {
        return $this->belongsTo(Book::class);
    }
}