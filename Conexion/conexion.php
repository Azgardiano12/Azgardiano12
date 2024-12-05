<?php
class conexion{
    public $conexion;
    public function __construct(){
        $this->conexion=new mysqli(hostname:"localhost",username:"root", password:"",database:"sistema_usuarios");
        if(!$this->conexion){
            echo "conexion fallida".$this->conexion->error;
        }
    }
}
?>