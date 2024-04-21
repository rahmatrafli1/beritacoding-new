<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Settings extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		if (!$this->auth_model->current_user()) {
			redirect('login');
		}
	}

	public function index()
	{
		$data['current_user'] = $this->auth_model->current_user();
		$this->load->view('admin/settings', $data);
	}

	public function upload_avatar()
	{
		echo "comming soon!";
	}

	public function remove_avatar()
	{
		echo "comming soon!";
	}

	public function edit_profile()
	{
		// load edit profile form
		$data['current_user'] = $this->auth_model->current_user();

		if ($this->input->method() === 'post') {
			$rules = $this->profile_model->profile_rules();
			$this->form_validation->set_rules($rules);

			if ($this->form_validation->run() === FALSE) {
				return $this->load->view('admin/setting_edit_profile_form', $data);
			}

			$new_data = [
				'id' => $data['current_user']->id,
				'name' => $this->input->post('name'),
				'email' => $this->input->post('email'),
			];

			if ($this->profile_model->update($new_data)) {
				$this->session->set_flashdata('message', 'Profile was updated');
				redirect(site_url('admin/settings'));
			}
		}

		$this->load->view('admin/setting_edit_profile_form', $data);
	}

	public function edit_password()
	{
		// load edit password form
		$data['current_user'] = $this->auth_model->current_user();

		if ($this->input->method() === 'post') {
			$rules = $this->profile_model->password_rules();
			$this->form_validation->set_rules($rules);

			if ($this->form_validation->run() === FALSE) {
				return $this->load->view('admin/setting_edit_password_form', $data);
			}

			$new_password_data = [
				'id' => $data['current_user']->id,
				'password' => password_hash($this->input->post('password'), PASSWORD_DEFAULT),
				'password_updated_at' => date("Y-m-d H:i:s"),
			];

			if ($this->profile_model->update($new_password_data)) {
				$this->session->set_flashdata('message', 'Password was changed');
				redirect(site_url('admin/settings'));
			}
		}

		$this->load->view('admin/setting_edit_password_form', $data);
	}
}
