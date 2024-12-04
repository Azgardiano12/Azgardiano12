<?php
require 'conexion.php';
$BD = new conexion();
if(isset($_POST['id_clientes'])){
    $BD->conexion->query( "UPDATE clientes SET nombre='$_POST[nombre]', direccion='$_POST[direccion]', 
    correo='$_POST[correo]', telefono='$_POST[telefono]' WHERE id_clientes=$_POST[id_clientes]");
    if($BD->conexion->error == ""){
        header('location:index.php');
    }else{
        echo "Eror en la actualizacion";
    }
}else{
$BD->conexion->query("INSERT INTO clientes (nombre, direccion, correo, telefono)
VALUES ('$_POST[nombre]', '$_POST[direccion]', '$_POST[correo]', '$_POST[telefono]')");
if($BD->conexion->error == ""){
        echo "Datos actualizados correctamente";
        ?>
        <a href="index.php">regresar</a>
        <?php
    }else{
        echo "No se pudo actualizar correctamente";
    ?>
            <a href="index.php">regresar</a>
            <?php
            }
        }