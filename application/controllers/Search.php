<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Search extends CI_Controller
{
	public function index()
	{
		$data['keyword'] = $this->input->get('keyword');

		$data['search_result'] = $this->article_model->search($data['keyword']);

		$this->load->view('search', $data);
	}
}
