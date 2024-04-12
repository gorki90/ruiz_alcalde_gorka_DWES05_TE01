<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('index');
});
//Rutas para las vistas
Route::get("/public/build/createbuild","App\Http\Controllers\ControladorPaginas@crear")->name("crear_ruta");

Route::get("/public/build/updatebuild/{id}","App\Http\Controllers\ControladorPaginas@actualizar")->name("actualizar_ruta");

Route::get("/public/build/deletebuild/{id}","App\Http\Controllers\ControladorPaginas@eliminar")->name("eliminar_ruta");