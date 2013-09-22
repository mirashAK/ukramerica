<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Bootstrap_Test extends Test_Controller {

	public function index()
	{
    $this->lang->load('site/titles', lang());
    $this->lang->load('site/forms', lang());
    
    $this->load->library('menu_lib');
    
    $this->view_data['transl'] = $this->lang->language; // Translation array
    $this->view_data['lang'] = lang();

    $this->view_data['site_title'] = '';
    $this->view_data['site_metadata'] = '';
    $this->view_data['site_metadata_description'] = '';
    $this->view_data['site_metadata_keywords'] = '';
    
    $this->view_data['site_header'] = '';
    $this->view_data['site_footer'] =  '';
    $this->view_data['breadcrumbs'] = '';
    
    $this->view_data['res_js'] = res_url('assets/js/');
    $this->view_data['res_css'] = res_url('assets/css/');
    $this->view_data['res_img'] = res_url('assets/img/');
    
    $this->view_data['site_body'] = $this->parse_in('layouts/testing/bootstrap_view');
    
    $this->parse_out('main_view');
	}
}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */