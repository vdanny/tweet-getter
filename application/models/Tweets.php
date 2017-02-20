<?php 
defined('BASEPATH') OR exit('No direct script access allowed');


class Tweets extends CI_Model {

	public $id;
	public $text;
	public $retweet_count;
	public $user_name;
	public $profile_image_url;
	public $created_at;

	private $table = 'tweets';

	public function get()
	{
		$query = $this->db->get($this->table);
		return $query->result_array();
	}

	public function insert_update($data)
	{
		$is_exists = $this->exists($data['id_str']);

		if($is_exists)
		{
			return $this->update($data);
		}
		else
		{
			return $this->insert($data);
		}
	}

	public function exists($id)
	{
		$query = $this->db->get_where($this->table, array('id' => $id));
		$count = $query->num_rows();
		return $count > 0;
	}

	public function insert($data)
	{
		try
		{
			$this->id                = $data['id_str'];
			$this->text              = $data['text'];
			$this->retweet_count     = $data['retweet_count'];
			$this->user_name         = $data['user']['name'];
			$this->profile_image_url = $data['user']['profile_image_url'];
			$this->created_at        = date('Y-m-d H:i:s', strtotime($data['created_at']));

			$success = $this->db->insert($this->table, $this);

			if(!$success)
			{
				throw new Exception('Error while inserting');
				return false;
			}
			return $success;
		}
		catch(Exception $e)
		{
			return false;
		}
	}

	public function update($data)
	{
		try
		{
			$this->id                = $data['id_str'];
			$this->text              = $data['text'];
			$this->retweet_count     = $data['retweet_count'];
			$this->user_name         = $data['user']['name'];
			$this->profile_image_url = $data['user']['profile_image_url'];
			$this->created_at        = date('Y-m-d H:i:s', strtotime($data['created_at']));

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