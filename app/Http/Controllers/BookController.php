<?php

namespace App\Http\Controllers;

use App\Book;

class BookController extends Controller
{
    public function featured()
    {
        return book::get()->toArray();
    }

    public function detail($book_id)
    {
        return book::find($book_id)->first();
    }
}
