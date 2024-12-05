<?php 
require '../Conexion/conexion.php';
$BD= new conexion();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lista de usuarios</title>
</head>
<body>
    <form action="" method="post">
        <label for="">nombre</label>
        <input type="text" require autocomplete="off">
        <label for="">email</label>
        <input type="text" require autocomplete="off">
        <label for="">fecha_reg</label>
        <input type="text" require autocomplete="off">
        <label for="">PASSWORD</label>
        <input type="text" require autocomplete="off">
        <button>Enviar</button>
    </form>
    <table>
        <thead>
            <tr>
                <th>Id</th>
                <th>nombre</th>
                <th>email</th>
                <th>fecha_reg</th>
                <th>PASSWORD</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $sql=$BD->conexion->query(query:"SELECT * FROM usuarios");
            while($dato=$sql->fetch_object()){
            ?>
            <tr>
                <td><?=$dato->Id?></td>
                <td><?=$dato->nombre?></td>
                <td><?=$dato->email?></td>
                <td><?=$dato->fecha_reg?></td>
                <td><?=$dato->PASSWORD?></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
</body>
</html>