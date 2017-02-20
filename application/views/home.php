<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>Tweet Getter</title>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<!-- DataTable CSS -->
		<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.13/css/dataTables.bootstrap.min.css">
		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

		<style type="text/css">
			.top-buffer { margin-top: 20px; }
			.right-buffer { margin-right: 10px; }
		</style>
	</head>
	<body>
		<div class="container">
			<h1>
				Tweet Getter
			</h1>
			<div class="row">
				<button type="button" class="btn btn-primary btn-md pull-right" data-toggle="modal" data-target="#settingsModal"><i class="glyphicon glyphicon-wrench"></i> Settings</button>
				<a href="javascript:void(0)" onclick="window.location.reload()" class="btn btn-primary btn-md pull-right right-buffer"><i class="glyphicon glyphicon-flash"></i> Instant Fetch</a>
			</div>
			<div class="row top-buffer" id="divData">
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
						<tr>
							<td colspan="5" class="text-center">
								Loading tweets ...
							</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

		<footer>
			<div class="container">
				<p class="text-center">
					Tweet Getter © 2017 <a href="http://www.vdanny.com" target="_blank">Vinsensius Danny</a>
				</p>
			</div>
		</footer>

		<?php $this->load->view('partials/settings_modal'); ?>

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<!-- Bootstrap JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
		<!-- DataTable JavaScript -->
		<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
		<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/dataTables.bootstrap.min.js"></script>

		<script type="text/javascript">
			$(document).ready(function(){
				// first time fetch
				getTweet();
				// periodically ajax refresh
				setInterval(getTweet, <?php echo $period; ?>);
			});

			function getTweet(){
				$.get("<?php echo base_url(); ?>index.php/get_tweet", function(data){
					$('#divData').html(data);
					$('.table').DataTable();
				});
			}

		</script>
	</body>
</html>