<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller{

	public function __construct(){
		parent::__construct();
		$this->load->model('Auth');

	}
	public function index(){
	if($this->session->userdata('login')){
			redirect(base_url()."dashboard");
	}else{
	$this->load->view("admin/login");
	}

	}

	public function login(){
		$username =	$this->input->post('username');
		$password =	$this->input->post('contrasena');
		$res = $this->Auth->login($username,$password);
var_dump($res);
		if(!$res){
			$this->session->set_flashdata("error","El usuario y/o contraseña son incorrectos");
			redirect(base_url());
		}else{
			$data	=	array(
					'id_user'=> $res->id_user,
					'nombre_u'=>$res->nombre_u,
					'tipo1'=>$res->id_tipo1,
					'login'=> TRUE
							);
			$this->session->set_userdata($data);
			redirect(base_url().'Dashboard');

		}
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect(base_url());
	}

}