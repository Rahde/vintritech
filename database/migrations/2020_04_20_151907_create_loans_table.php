<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateLoansTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('loans', function (Blueprint $table) {
            $table->increments('id');
            $table->integer("book_id")->unsigned()->index();
            $table->boolean("status")->default(1);
            $table->string("check_out_by")->nullable();
            $table->timestamp("check_out_date")->nullable();
            $table->string("check_out_location")->nullable();
            $table->integer("check_out_condition")->nullable();
            $table->timestamp("check_in_date")->nullable();
            $table->string("check_in_location")->nullable();
            $table->integer("check_in_condition")->nullable();
            $table->string("check_in_librarian_id")->nullable();
            $table->timestamps();

            $table->foreign('book_id')
                ->references('id')
                ->on('books')
                ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('loans');
    }
}
