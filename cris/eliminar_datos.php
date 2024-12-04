<?php
require 'conexion.php';
$BD=new conexion();
if(isset ($_GET['id'])){
    $BD->conexion ->query("DELETE FROM datos_alumno WHERE iD=$_GET[id]");
    if($BD->conexion->error ==""){
        header("location:index.php");
}else{
    echo "error al eliminar los datos";
}
}