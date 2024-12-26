
	<?php $this->view("header",$data); ?>
	
	<section id="form" style="margin-top: 5px"><!--form-->
		<div class="container" >
		
			<div class="row" style="text-align: center;">
				<div class="col-sm-4 col-sm-offset-1"  style="float: none;display: inline-block;">
					<div class="login-form"><!--login form-->
						<h2>connecte toi a ton compte</h2>
						<span id="err"><?php check_error() ?><span>
						<form method="POST">
							<input type="email" placeholder="Email Address" name="email" value="<?= isset($_POST['email']) ? $_POST['email'] : ''; ?>"/>
						
							<input type="password" placeholder="Password" name="password" value="<?= isset($_POST['password']) ? $_POST['password'] : ''; ?>" />
							
							<button style="margin:auto;" type="submit" class="btn btn-default">Login</button>
						</form>
						<br>
						<a href="<?=ROOT?>signup">pas de compte inscrit toi</a>
					</div><!--/login form-->
				</div>
				
				
				</div>
			</div>
		</div>
	</section><!--/form-->
	<style>
		#err{
			color: red;
			font-style: italic;
			
		}</style>

	
	<?php $this->view("footer",$data); ?>
  
