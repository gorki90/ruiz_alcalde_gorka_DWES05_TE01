<?php

use Illuminate\Support\Facades\Route;


Route::get("/public/info/getskills","App\Http\Controllers\ControladorPaginas@getSkills")->name("getSkills_ruta");//implementado

Route::get("/public/info/getskills/{id}","App\Http\Controllers\ControladorPaginas@getSkillsById")->name("getSkillsById_ruta");//implementado

Route::get("/public/build/builds","App\Http\Controllers\ControladorPaginas@builds")->name("builds_ruta");//implementado

Route::get("/public/build/builds/{id}","App\Http\Controllers\ControladorPaginas@buildsById")->name("buildsById_ruta");//implementado

Route::get("/public/build/autor/{id}","App\Http\Controllers\ControladorPaginas@autores")->name("autores_ruta");//implementado

Route::post("/public/build/createbuild","App\Http\Controllers\ControladorPaginas@createBuild")->name("createBuild_ruta");

Route::put("/public/build/updatebuild/{id}","App\Http\Controllers\ControladorPaginas@updateBuild")->name("updateBuild_ruta");

Route::delete("/public/build/deletebuild/{id}","App\Http\Controllers\ControladorPaginas@deleteBuild")->name("deleteBuild_ruta");


