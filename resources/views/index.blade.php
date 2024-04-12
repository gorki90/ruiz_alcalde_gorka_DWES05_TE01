<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="stylesheet" href="{{ asset('css/app.css') }}">
</head>
<body>
    <h1>Bienvenido a la API de Outward</h1>
    <h3>Disponemos de los siguientes endpoints:</h3>
    <h1>Información</h1>
    <ol>
        <li><a href="api/public/info/getskills">Skill Trees</li>
        <li><a href="api/public/info/getskills/1">Skill Trees por ID (por defecto lleva a la 1)</li>
        <li><a href="api/public/build/builds">Builds existentes en el sistema</li>
        <li><a href="api/public/build/builds/1">Builds existentes en el sistema por ID (por defecto lleva a la 1)</li>
        <li><a href="api/public/build/autor/1">Builds creadas por un autor en concreto (por defecto lleva a la 1)</li>
    </ol>
   

    <h1>Diseño</h1>
    <ol>
    <li><a href="/public/build/createbuild">Crea tu build</li>
    <li><a href="/public/build/updatebuild/11">Modifica tu build</li>
    <li><a href="/public/build/deletebuild/11">Elimina tu build</li>
    </ol>
</body>
</html>
