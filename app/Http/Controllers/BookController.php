<?php

namespace App\Http\Controllers;

use App\Book;

class BookController extends Controller
{
    public function featured()
    {
        // Featured books to appear on front page
        return book::where("featured",1)->get()->toArray();
    }

    public function detail($book_id)
    {
        // Retreive single gook data
        return book::find($book_id)->first();
    }
}
