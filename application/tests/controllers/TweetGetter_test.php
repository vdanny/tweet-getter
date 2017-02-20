<?php
/**
 * Testcase for TweetGetter controller
 */

class TweetGetter_test extends TestCase
{
	public function test_index()
	{
		$output = $this->request('GET', '');
		$this->assertContains('<title>Tweet Getter</title>', $output); # check app title
		$this->assertContains('Settings', $output); # check button Settings is exist
		$this->assertContains('Instant Fetch', $output); # check button Instant Fetch is exist
		$this->assertContains('Loading tweets ...' , $output); # check loading message is exist
		$this->assertContains('10000', $output); # check if period is loaded correctly
	}

	public function test_get_tweet()
	{
		$output = $this->request('GET', 'get_tweet');
		$this->assertContains('ID', $output);
		$this->assertContains('User', $output);
		$this->assertContains('Text', $output);
		$this->assertContains('Retweeted', $output);
		$this->assertContains('Created At', $output);
	}

	public function test_method_404()
	{
		$this->request('GET', 'welcome/method_not_exist');
		$this->assertResponseCode(404);
	}

	public function test_APPPATH()
	{
		$actual = realpath(APPPATH);
		$expected = realpath(__DIR__ . '/../..');
		$this->assertEquals(
			$expected,
			$actual,
			'Your APPPATH seems to be wrong. Check your $application_folder in tests/Bootstrap.php'
		);
	}
}
