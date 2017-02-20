<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class TweetGetter extends CI_Controller {

	private $url = "https://api.twitter.com/1.1/statuses/user_timeline.json";
	private $requestMethod = "GET";
	private $getfield = '?screen_name=foxnews&count=20';
	private $period;
	private $username;
	private $count;

	function __construct()
	{
        parent::__construct();

		$this->load->config('twitter');

		$settings = array(
		    'oauth_access_token' => $this->config->item('oauth_access_token'),
		    'oauth_access_token_secret' => $this->config->item('oauth_access_token_secret'),
		    'consumer_key' => $this->config->item('consumer_key'),
		    'consumer_secret' => $this->config->item('consumer_secret')
		);
		$this->load->library('TwitterAPIExchange', $settings);

		$this->username = $this->settings->get_twitter_username();
		$this->count = $this->settings->get_max_tweet_retrieve();
		$this->getfield = "?screen_name=$this->username&count=$this->count";
		$this->period = $this->settings->get_period();
	}

	/**
	 * Index Page for this controller.
	 */
	public function index()
	{
		$this->load->view('home', 
			array(
				'period'   => $this->period,
				'username' => $this->username,
				'count'    => $this->count
			)
		);
	}

	public function get_tweet()
	{
		$result = $this->twitterapiexchange->setGetfield($this->getfield)
										   ->buildOauth($this->url, $this->requestMethod)
										   ->performRequest();
        $data = json_decode($result, $assoc = TRUE);

        foreach ($data as $tweet) 
        {
			$this->tweets->insert_update($tweet);
        }

        $tweets = $this->tweets->get();
        $this->load->view('partials/tweet_table', 
        	array(
				'tweets'   => $tweets
        	)
        );
	}

	public function update_settings()
	{
		echo 'test';
	}

}
