<?php 

require_once APPPATH . 'models/Tweets.php';

class Tweets_test extends TestCase {

	public function test_get()
	{
		$tweets = new Tweets();
		$output = $tweets->get();
		$this->assertNotNull($output);
	}

	public function test_insert()
	{
		$data = array(
			'id_str' => '123123123123123123',
			'text' => 'testing',
			'retweet_count' => '100',
			'user' => array('name' => 'tester','profile_image_url' => 'image.png'),
			'created_at' => date('Y-m-d H:i:s')
		);
		$tweets = new Tweets();
		$output = $tweets->insert_update($data);
		$this->assertTrue($output);
	}

	public function test_update()
	{
		$data = array(
			'id_str' => '123123123123123123',
			'text' => 'testingupdate',
			'retweet_count' => '125',
			'user' => array('name' => 'testerupdate','profile_image_url' => 'imageupdate.png')
		);
		$tweets = new Tweets();
		$output = $tweets->insert_update($data);
		$this->assertTrue($output);
	}

}

?>