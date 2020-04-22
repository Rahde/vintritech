<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Book extends Model
{
    protected $appends = ['author','collection','genre','reviews','subject','tag','weight','loan']; //

    protected $hidden = [
        'created_at','deleted_at'
    ];

    public function Author()
    {
        return $this->belongsToMany(Author::class, "book_authors");
    }

    public function Collection()
    {
        
        return $this->belongsToMany(Collection::class, "book_collections");
    }

    public function Genre()
    {
        return $this->belongsToMany(Genre::class, "book_genres");
    }

    public function Reviews()
    {
        return $this->hasMany(Review::class);
    }

    public function Subject()
    {
        return $this->belongsToMany(Subject::class, "book_subjects");
    }

    public function Tag()
    {
        return $this->belongsToMany(Tag::class, "book_tags");
    }

    public function Weight()
    {
        return $this->hasMany(Weight::class);
    }

    public function Loan()
    {
        return $this->hasMany(Loan::class);
    }

    public function getAuthorAttribute(){
        return $this->Author()->get();
    }

    public function getCollectionAttribute(){
        return $this->Collection()->get();
    }

    public function getGenreAttribute(){
        return $this->Genre()->get();
    }

    public function getReviewsAttribute(){
        return $this->Reviews()->get();
    }
    
    public function getSubjectAttribute(){
        return $this->Subject()->get();
    }
    
    public function getTagAttribute(){
        return $this->Tag()->get();
    }

    public function getWeightAttribute(){
        return $this->Weight()->get();
    }

    public function getLoanAttribute(){
        return $this->Loan()->get();
    }
}