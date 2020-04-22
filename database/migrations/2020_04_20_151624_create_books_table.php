<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBooksTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('books', function (Blueprint $table) {
            $table->increments('id');
            $table->string('audience')->nullable();
            $table->string('book_designer')->nullable();
            $table->string('content')->nullable();
            $table->string('contributions')->nullable();
            $table->integer('copyright_date')->unsigned()->index();
            $table->string('cover_artist')->nullable();
            $table->string('physical_format')->nullable();
            $table->timestamp('date_published')->nullable();
            $table->string('dew_decimal')->nullable();
            $table->string('physical_dimensions')->nullable();
            $table->integer('edition')->unsigned()->index();
            $table->string('edition_name')->nullable();
            $table->string('excerpt')->nullable();
            $table->integer('first_publish_year')->unsigned()->index();
            $table->integer('isbn')->unsigned()->index();
            $table->string('isbn13')->nullable();
            $table->string('language')->nullable();
            $table->integer('latest_revision')->unsigned()->index();
            $table->string('ocaid')->nullable();
            $table->string('overview', 350)->nullable();
            $table->integer('pages')->unsigned()->index();
            $table->string('pagination')->nullable();
            $table->string('printer')->nullable();
            $table->string('publish_country')->nullable();
            $table->string('publish_places')->nullable();
            $table->string('publisher')->nullable();
            $table->integer('reading_level')->unsigned()->index();
            $table->string('region')->nullable();
            $table->string('subtitle')->nullable();
            $table->string('tag_line')->nullable();
            $table->string('title')->nullable();
            $table->string('title_long')->nullable();
            $table->string('website')->nullable();
            $table->float('original_price')->nullable();
            $table->timestamp('purchase_date')->nullable();
            $table->string('current_branch')->nullable();
            $table->enum('current_status', ['available', 'on loan'])->nullable();
            $table->timestamp('due_date')->nullable();
            $table->integer('hold_count')->unsigned()->index();
            $table->integer('number_of_copies')->unsigned()->index();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('books');
    }
}