<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('table_cursos', function (Blueprint $table) {
            $table->id();
            $table->string("titulo");
            $table->longText("descripcion");
            $table->string("tipo_curso");
            $table->integer("max_personas");
            $table->float("costo");
            $table->integer("duracion");
            $table->integer("unidad_duracion");
            $table->softDeletes();
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
        Schema::dropIfExists('table_cursos');
    }
};
