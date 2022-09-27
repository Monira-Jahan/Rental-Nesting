<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDetailesImagesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('detailes_images', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('apartment_id')->unsigned();
            $table->string('image');
            $table->timestamps();

            $table->foreign('apartment_id')->references('id')->on('apartment_details')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('detailes_images');
    }
}
