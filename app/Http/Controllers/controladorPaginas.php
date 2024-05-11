<?php
namespace App\Http\Controllers;

use App\Models\Build;
use App\Models\Autor;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Response;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Http;




class ControladorPaginas extends Controller
{

    public function index()
{
    return csrf_token(); 
}

public function crearbuild(){
    return view("crear");
}
   //Funciones para obtener la información desde el archivo Json
    public function getSkills(){
    $jsonContent = file_get_contents('../app/Models/skillTrees.json');
    $json= json_decode($jsonContent,true);
    $datos= $json['data'];
    echo Codigos::success();
    header('Content-Type: application/json');
    echo json_encode($datos);
        
    }

    public function getSkillsById($id){
        $jsonContent = file_get_contents('../app/Models/skillTrees.json');
        $json= json_decode($jsonContent,true);
        $datos= $json['data'];
        $idExists=false;
    
    foreach($datos as $skilltrees){
        if($id==$skilltrees['id']){
            echo Codigos::success();
            header('Content-Type: application/json');
            echo json_encode($skilltrees);
            $idExists=true;
        }
    }
    
    if(!$idExists){
        echo Codigos::notFound();
        echo "El id no existe";
    }

    }
//función para mostrar todas las builds registradas
    public function builds(){
        $builds=Build::all();
        if($builds){
            echo Codigos::success();
            echo "Builds cargadas correctamente";
            echo json_encode($builds, JSON_PRETTY_PRINT);
        }else{
            echo Codigos::notFound();
            echo "No hay ninguna Build";
        }
    }
//función para mostrar las builds por id
    public function buildsById($id){
        $build=DB::table("builds")->where("id_build",$id)->get();
        

    if($build->isEmpty()){
        echo Codigos::notFound();
        echo "El id no existe";
    }else{
        echo json_encode($build, JSON_PRETTY_PRINT);
    }

    }
//Función con inner joint para mostar las builds de un autor concreto
    public function autores($id){
        $autor=Build::select('builds.*')
        ->join('autors', 'builds.autor_id', '=', 'autors.autor_id')
        ->where('autors.autor_id', $id)
        ->get();

        if($autor->isEmpty()){
            echo Codigos::notFound();
            echo "El id no existe";
        }else{
            echo json_encode($autor, JSON_PRETTY_PRINT);
        }

    }
//Función para redirigir a la vista de crear
    public function crear(){
        return view('crear');
    }
//Función para redirigir a la vista de modificar
    public function actualizar($id){
        return view('modificar', compact("id"));
    }
//Función para redirigir a la vista de eliminar
    public function eliminar($id){
        return view('eliminar', compact("id"));
    }
//Función para la petición de post para crear una build nueva
    public function createBuild(Request $request){
       
        $datos=$request->all();
        $build=new Build;
        $build = new Build();
        $build->nombre_build = $datos['nombre_build'];
        $build->descripcion_build = $datos['descripcion_build'];
        $build->skill_trees = $datos['skill_trees'];
        $build->abilities = $datos['abilities'];
        $build->equipment_head = $datos['equipment_head'];
        $build->equipment_chest = $datos['equipment_chest'];
        $build->equipment_foot = $datos['equipment_foot'];
        $build->equipment_weapon1 = $datos['equipment_weapon1'];
        $build->equipment_weapon2 = $datos['equipment_weapon2'];
        $build->equipment_tent = $datos['equipment_tent'];
        $build->autor_id = $datos['autor_id'];
        $build->equipment_backpack = $datos['equipment_backpack'];
        $build->save();
        echo Codigos::created();
    }
//Función para la petición put y modificar uno o varios datos de una build existente
    public function updateBuild(Request $request, $id){
    
    $datos = $request->all();
    $build = Build::where('id_build', $id)->first();
    if (!$build) {
        echo Codigos::notFound();
        echo "El id no existe";
    }else{
        $build->id_build=$id;
        $build->nombre_build = $datos['nombre_build'] ?? $build->nombre_build;
        $build->descripcion_build = $datos['descripcion_build'] ?? $build->descripcion_build;
        $build->skill_trees = $datos['skill_trees'] ?? $build->skill_trees;
        $build->abilities = $datos['abilities'] ?? $build->abilities;
        $build->equipment_head = $datos['equipment_head'] ?? $build->equipment_head;
        $build->equipment_chest = $datos['equipment_chest'] ?? $build->equipment_chest;
        $build->equipment_foot = $datos['equipment_foot'] ?? $build->equipment_foot;
        $build->equipment_weapon1 = $datos['equipment_weapon1'] ?? $build->equipment_weapon1;
        $build->equipment_weapon2 = $datos['equipment_weapon2'] ?? $build->equipment_weapon2;
        $build->equipment_tent = $datos['equipment_tent'] ?? $build->equipment_tent;
        $build->autor_id = $datos['autor_id'] ?? $build->autor_id;
        $build->equipment_backpack = $datos['equipment_backpack'] ?? $build->equipment_backpack;
        $build->save();
        echo Codigos::success();
        echo'Build actualizada correctamente';
    }

    

    }
//Función para la petición delete y eliminar una build existente
    public function deleteBuild($id){

    $build = Build::find($id);

    if (!$build) {
        echo Codigos::notFound();
        echo "El id no existe";
    }else{
        $build->delete();
        echo Codigos::success();
        echo'Build eliminada correctamente';
    }

    }


 //Funciones para la inclusión del microservicio creado con Java   
public function verAutores(){
    $url = 'http://localhost:8080/api/usuarios';
    $response = Http::get($url);

    if ($response->successful()) {
        return $response->json();
    } else {
        return response()->json(['error' => 'Error al obtener usuarios del microservicio'], $response->status());
    }
}

public function verAutorId($id){
    $url = "http://localhost:8080/api/usuarios/{$id}";
    $response = Http::get($url);

    if ($response->successful()) {
        return $response->json();
    } else {
        return response()->json(['error' => 'Usuario no encontrado en el microservicio'], $response->status());
    }
}

public function crearAutor(Request $request){
    $url = 'http://localhost:8080/api/usuarios/crear';
    $response = Http::post($url, $request->all());

    if ($response->successful()) {
        return $response->json();
    } else {
        return response()->json(['error' => 'Error al crear usuario en el microservicio'], $response->status());
    }
}

public function modificarAutor(Request $request, $id){
    $url = "http://localhost:8080/api/usuarios/modificar/{$id}";
    $response = Http::put($url, $request->all());

    if ($response->successful()) {
        return $response->json();
    } else {
        return response()->json(['error' => 'Error al actualizar usuario en el microservicio'], $response->status());
    }
}

public function eliminarAutor($id){
    $url = "http://localhost:8080/api/usuarios/eliminar/{$id}";
    $response = Http::delete($url);

    if ($response->successful()) {
        return response()->json(['message' => 'Usuario eliminado correctamente'], $response->status());
    } else {
        return response()->json(['error' => 'Error al eliminar usuario en el microservicio'], $response->status());
    }
}

}
