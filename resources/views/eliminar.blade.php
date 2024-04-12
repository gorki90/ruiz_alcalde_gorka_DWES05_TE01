<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Elimina tu Build</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h2>Eliminar Build</h2>
    <form class="form" action="{{ route('deleteBuild_ruta', ['id' => $id]) }}" method="POST">
        @csrf 
    
        <h3>¿Estás seguro de que quieres eliminar la build?</h3>
        
        <button type="submit">Eliminar Build</button>
    </form>
</body>
</html>