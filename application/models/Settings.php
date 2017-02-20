<?php 
defined('BASEPATH') OR exit('No direct script access allowed');


class Settings extends CI_Model {

	public $id;
	public $value;

	private $table = 'settings';

	public function get_period()
	{
		$this->db->where('id', 'PERIOD');
		$query = $this->db->get($this->table);
		return $query->row_array()['value'];
	}

	public function get_twitter_username()
	{
		$this->db->where('id', 'TWITTER_USERNAME');
		$query = $this->db->get($this->table);
		return $query->row_array()['value'];
	}
	public function get_max_tweet_retrieve()
	{
		$this->db->where('id', 'MAX_TWEET_RETRIEVE');
		$query = $this->db->get($this->table);
		return $query->row_array()['value'];
	}

	public function update($data)
	{
		try
		{
			$this->id                = $data['id'];
			$this->value             = $data['value'];

			$success = $this->db->update($this->table, $this, array('id' => $this->id));

			if(!$success)
			{
				throw new Exception('Error while updating');
				return false;
			}
			return $success;
		}
		catch(Exception $e)
		{
			return false;
		}
	}

	public function delete()
	{
		$this->db->delete($this->table, array('id' => $this->id));
	}



}

?>