<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Setting extends CI_Controller {

	function __construct()
	{
        parent::__construct();
    }

	public function update_settings()
	{
		$data = $this->input->post();
		$data['period'] *= 1000; // set to miliseconds
		$this->settings->update(array('id' => 'PERIOD', 'value' => $data['period']));
		$this->settings->update(array('id' => 'TWITTER_USERNAME', 'value' => $data['username']));
		$this->settings->update(array('id' => 'MAX_TWEET_RETRIEVE', 'value' => $data['count']));
		redirect('');
	}

}