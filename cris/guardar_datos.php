<?php
require 'conexion.php';
$BD=new conexion();
if(isset ($_POST['id'])){
    $BD->conexion ->query(query:"UPDATE datos_alumno SET crup='$_POST [curp]',nombre='$_POST[nombre]',
    paterno='$_POST[paterno]',materno='$_POST[materno]' WHERE iD=$_POST[id]");
    if($BD->conexion->error ==""){
        echo "datos actualizados correctamente";
        //header('location:index.php'  );
}else{
    echo "no esta registrado";
}
}else{
        $BD->conexion->query("INSERT INTO datos_alumno (curp,nombre,paterno,materno)
        VALUE ('$_POST[curp]','$_POST[nombre]','$_POST[paterno]','$_POST[materno])");
        if($BD->conexion->error ==""){
            echo "Dnm atos insertados correctamente";
            ?>
            <a href="index.php">regresar </a>
            <?php
        }else{
            echo "No se pudo registrar correctamente";
            ?>
            <a href="index.php">regresar </a>
            <?php
        }
    }