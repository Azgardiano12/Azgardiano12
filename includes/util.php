<?php 
/* Conexion a base de datos con POO */
class Util{
    public $conexion;

    public function __construct(){
        $this->conexion = new mysqli("localhost", "root", "", "tejal");
        if (!$this->conexion) {
            exit;
        }
    }
    public function consulta($query){
        return $this->conexion->query($query);
    }
    public function consultaOBJ($query){
        return $this->consulta($query)->fetch_object();
    }

    public function PERMISOSUSR($IDUSR,$MODULO){
        $M = $this->consultaOBJ("");
        if(isset($MOD)){
            RETURN $MOD;
        }else {
            die();
        }
        
    }
}