<?php 

require_once APPPATH . 'models/Settings.php';

class Settings_test extends TestCase {

	public function test_get_period()
	{
		$settings = new Settings();
		$output = $settings->get_period();
		$this->assertSame('10000', $output);
	}

	public function test_get_count()
	{
		$settings = new Settings();
		$output = $settings->get_max_tweet_retrieve();
		$this->assertSame('20', $output);
	}

	public function test_get_username()
	{
		$settings = new Settings();
		$output = $settings->get_twitter_username();
		$this->assertSame('foxnews', $output);
	}

	public function test_update()
	{
		$data = array(
			'id' => 'PERIOD',
			'value' => '10000'
		);
		$settings = new Settings();
		$output = $settings->update($data);
		$this->assertTrue($output);
	}

}

?>