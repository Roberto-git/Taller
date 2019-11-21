<?php
class Usuarios extends CI_Model{

public function getUsers(){
	$this->db->select('*');
	$this->db->from("altauser");
	$this->db->join("tipouser","tipouser.id_tipo = altauser.id_tipo1 ");
$resultados = $this->db->get();
return $resultados->result();
}

}