<?php

use Illuminate\Support\Facades\Route;

//Rutas para la api 
Route::get("/public/info/getskills","App\Http\Controllers\ControladorPaginas@getSkills")->name("getSkills_ruta");//implementado

Route::get("/public/info/getskills/{id}","App\Http\Controllers\ControladorPaginas@getSkillsById")->name("getSkillsById_ruta");//implementado

Route::get("/public/build/builds","App\Http\Controllers\ControladorPaginas@builds")->name("builds_ruta");//implementado

Route::get("/public/build/builds/{id}","App\Http\Controllers\ControladorPaginas@buildsById")->name("buildsById_ruta");//implementado

Route::get("/public/build/autor/{id}","App\Http\Controllers\ControladorPaginas@autores")->name("autores_ruta");//implementado

Route::post("/public/build/createbuild","App\Http\Controllers\ControladorPaginas@createBuild")->name("createBuild_ruta");//implementado

Route::put("/public/build/updatebuild/{id}","App\Http\Controllers\ControladorPaginas@updateBuild")->name("updateBuild_ruta");//implementado

Route::delete("/public/build/deletebuild/{id}","App\Http\Controllers\ControladorPaginas@deleteBuild")->name("deleteBuild_ruta");//implementado

//Routas del microservicio Java

Route::get("/public/usuarios","App\Http\Controllers\ControladorPaginas@verAutores")->name("autor_ruta");

Route::get("/public/usuarios/{id}","App\Http\Controllers\ControladorPaginas@verAutorId")->name("autor_id_ruta");

Route::post("/public/usuarios/crear","App\Http\Controllers\ControladorPaginas@crearAutor")->name("crearAutor_ruta");

Route::put("/public/usuarios/modificar/{id}","App\Http\Controllers\ControladorPaginas@modificarAutor")->name("modificarAutor_ruta");

Route::delete("/public/usuarios/eliminar/{id}","App\Http\Controllers\ControladorPaginas@eliminarAutor")->name("eliminarAutor_ruta");
