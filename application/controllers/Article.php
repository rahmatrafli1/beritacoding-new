<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Article extends CI_Controller
{
	public function index()
	{
		// @TODO: get article from model
		$config['base_url'] = site_url('/article');
		$config['page_query_string'] = TRUE;
		$config['total_rows'] = $this->article_model->get_published_count();
		$config['per_page'] = 2;

		$config['full_tag_open'] = '<div class="pagination">';
		$config['full_tag_close'] = '</div>';


		$this->pagination->initialize($config);
		$limit = $config['per_page'];
		$offset = html_escape($this->input->get('per_page'));

		$data['articles'] = $this->article_model->get_published($limit, $offset);

		if (count($data['articles']) > 0) {
			$this->load->view('articles/list_article', $data);
		} else {
			$this->load->view('articles/empty_article');
		}
	}

	public function show($slug = null)
	{
		if (!$slug) {
			show_404();
		}

		// @TODO: get article from model
		$data['article'] = $this->article_model->find_by_slug($slug);

		if (!$data['article']) {
			show_404();
		}

		$this->load->view('articles/show_article', $data);
	}
}
