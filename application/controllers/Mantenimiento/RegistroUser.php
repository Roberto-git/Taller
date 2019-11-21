<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class RegistroUser extends CI_Controller{

	public function __construct(){
	parent::__construct();
	$this->load->model('Usuarios');
}
	public function index(){
	$data = array('usuarios' => $this->Usuarios->getUsers(),
);
		$this->load->view("layouts/header");
		$this->load->view('layouts/aside');
		$this->load->view("admin/registro/registroUser",$data);
		$this->load->view('layouts/footer');
	}

	public function add(){
		$this->load->view("layouts/header");
		$this->load->view('layouts/aside');
		$this->load->view("admin/registro/agregar");
		$this->load->view('layouts/footer');
	}

	public function agregar(){
		$matricula = $this->input->post("matricula");
		$nombre = $this->input->post("nombre");
		$apellido_p = $this->input->post("apellido_paterno");
		$apellido_m = $this->input->post("apellido_materno");
		$username = $this->input->post("username");
		$contrasena = $this->input->post("contrasena");

	}

}