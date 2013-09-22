<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends Front_Controller 
{
  public function _remap($method)
  {
    if (!empty($method) && $method!=='index') $this->static_page($method);
    else $this->index();
  }
  
  public function index()
  {
  
    $this->parse_out('main_view');
  }

}