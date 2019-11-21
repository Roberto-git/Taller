<?php
class Auth extends CI_Model{

public function login($username,$password){
$this->db->where('username',$username);
$this->db->where('contrasena',$password);
$resultados = $this->db->get('altauser');
if($resultados-> num_rows()>0){
return $resultados->row();
}else{

	return false;
}
}

}