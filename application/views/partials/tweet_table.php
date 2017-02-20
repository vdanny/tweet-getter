<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<table class="table table-hover">
	<thead>
		<tr>
			<th>ID</th>
			<th>User</th>
			<th>Text</th>
			<th>Retweeted</th>
			<th>Created At</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach ($tweets as $tweet): ?>
		<tr>
			<td><?php echo $tweet['id']; ?></td>
			<td>
				<label><?php echo $tweet['user_name']; ?></label>
				<img src="<?php echo $tweet['profile_image_url']; ?>">
			</td>
			<td><?php echo $tweet['text']; ?></td>
			<td><?php echo $tweet['retweet_count']; ?></td>
			<td><?php echo $tweet['created_at']; ?></td>
		</tr>
		<?php endforeach ?>
	</tbody>
</table>