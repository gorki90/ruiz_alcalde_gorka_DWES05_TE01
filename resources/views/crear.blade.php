<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Build</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h2>Crear nueva Build</h2>
    <form class="form" action="{{ route('createBuild_ruta') }}" method="POST">
        @csrf 
    
        <label for="nombre_build">Nombre de la Build:</label>
        <input type="text" id="nombre_build" name="nombre_build" required><br><br>
        
        <label for="descripcion_build">Descripción de la Build:</label>
        <textarea id="descripcion_build" name="descripcion_build" required></textarea><br><br>

        <label for="skill_trees">Skill Trees:</label>
        <input type="text" id="skill_trees" name="skill_trees"><br><br>
        
        <label for="abilities">Habilidades:</label>
        <input type="text" id="abilities" name="abilities"><br><br>
        
        <label for="equipment_head">Equipo (Cabeza):</label>
        <input type="text" id="equipment_head" name="equipment_head"><br><br>
        
        <label for="equipment_chest">Equipo (Pecho):</label>
        <input type="text" id="equipment_chest" name="equipment_chest"><br><br>
        
        <label for="equipment_foot">Equipo (Pies):</label>
        <input type="text" id="equipment_foot" name="equipment_foot"><br><br>
        
        <label for="equipment_weapon1">Arma 1:</label>
        <input type="text" id="equipment_weapon1" name="equipment_weapon1"><br><br>
        
        <label for="equipment_weapon2">Arma 2:</label>
        <input type="text" id="equipment_weapon2" name="equipment_weapon2"><br><br>
        
        <label for="equipment_tent">Tienda:</label>
        <input type="text" id="equipment_tent" name="equipment_tent"><br><br>
        
        <label for="autor_id">ID de Autor:</label>
        <input type="number" id="autor_id" name="autor_id" required><br><br>
        
        <label for="equipment_backpack">Mochila:</label>
        <input type="text" id="equipment_backpack" name="equipment_backpack"><br><br>
        
        <button type="submit">Crear Build</button>
    </form>
</body>
</html>
