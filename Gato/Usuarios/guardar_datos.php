<?php
require '../Conexion/conexion.php';
$BD=new conexion();
if(isset($_POST['id'])){
    $BD->conexion->query("UPDATE usuarios SET nombre='$_POST[nombre]', email='$_POST[email]', fecha_reg='$_POST[fecha_reg],PASSWORD='$_POST[password]' WHERE Id=$_POST[id]" );
    if($BD->conexion->error == ""){
        echo "Datos actualizados correctamente";
        header(header: 'location:index.php');
    } else {
        echo "no esta registrado",
    }
} else {
$BD->conexion->query("INSERT INTO usuarios (nombre,email,fecha_reg,PASSWORD) VALUE ('$_POST[nombre]'.'$_POST[email]','$_POST[fecha_reg]','$_POST[PASSWORD]')");
if ($BD->conexion->error==""){
    echo "Datos insertados correctamente";
    ?>
    <a href="index.php">regresar</a>
    <?php
} else {
    echo "No se pudo ingresar correctamente";
    ?>
    <a href="index.php">regresar</a>
    <?php
}
}