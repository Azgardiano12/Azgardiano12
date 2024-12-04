<?php
require 'conexion.php';
$BD = new conexion();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de usuarios</title>
</head>
<body>
    <form action="guardar_datos.php" method="post">
    <label for= "">Nombre</label> 
    <input type="text" require autocomplete="off"name="nombre">
    <label for= "">Direccion</label> 
    <input type="text" require autocomplete="off"name="direccion">
    <label for= "">Correo</label> 
    <input type="text" require autocomplete="off"name="correo">
    <label for= "">Telefono</label> 
    <input type="text" require autocomplete="off"name="telefono">
    <button>Enviar</button>
    <table>
        <thead>
            <tr>
                <th>Id_clientes</th>
                <th>Nombre</th>
                <th>Direccion</th>
                <th>Correo</th>
                <th>Telefono</th>
                <th>Eliminar</th>
                <th>Actualizar</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql = $BD->conexion->query("SELECT * FROM clientes ");
            while($dato = $sql->fetch_object()){
            ?>
            <tr>
                <td><?= $dato->id_clientes?></td>
                <td><?= $dato->nombre?></td>
                <td><?= $dato->direccion?></td>
                <td><?= $dato->correo?></td>
                <td><?= $dato->telefono?></td>
                <td><a href="eliminar_datos.php?id=<?= $dato->id_clientes?>">Eliminar</a></td>
                <td><a href="index_actualizar.php?id=<?= $dato->id_clientes?>">Actualizar</a></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
</body>
</html> 