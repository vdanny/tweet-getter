<div class="modal fade" id="settingsModal" tabindex="-1" role="dialog" aria-labelledby="settingsModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="settingsModalLabel">Settings</h4>
			</div>
			<form action="<?php echo base_url('index.php/setting/update_settings'); ?>" method="post">
			<div class="modal-body">
					<div class="row">
						<div class="col-md-4"><label>Period (seconds)</label></div>
						<div class="col-md-6"><input type="number" class="form-control" name="period" min="10" value="<?php echo $period/1000; ?>"></div>
					</div>
					<div class="row">
						<div class="col-md-4"><label>Twitter Username</label></div>
						<div class="col-md-6"><input type="text" class="form-control" name="username" value="<?php echo $username; ?>"></div>
					</div>
					<div class="row">
						<div class="col-md-4"><label>Tweets Retrieved Count</label></div>
						<div class="col-md-6"><input type="number" class="form-control" name="count" min="10" max="30" value="<?php echo $count; ?>"></div>
					</div>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				<button type="submit" class="btn btn-primary">Save changes</button>
			</div>
			</form>
		</div>
	</div>
</div>