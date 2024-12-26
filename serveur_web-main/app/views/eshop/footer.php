<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>smart</span>bike</h2>
							<p></p>
						</div>
					</div>
					
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-3">
						<div class="single-widget">
							<h2>les liens</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">Home</a></li>
								<li><a href="contact">Contactez nous</a></li>
								<li><a href="<?php if(!empty($data['user_data'])){
											echo "checkout";

										}else{
											echo "login";
										} ?>">Make an order</a></li>
								<li><a href="shop">Produits</a></li>
								<li><a href="admin">Admin</a></li>
								
							</ul>
						</div>
					</div>
				
					<div class="col-sm-3">
						<div class="single-widget">
							<h2>liens externes</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="login">connexion</a></li>
								<li><a href="signin">inscription</a></li>
								<li><a href="cart">Cart</a></li>
								<li><a href="wishlist">Wishlist</a></li>
								
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="single-widget">
							<h2>Follow us</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="#">Facebook</a></li>
								<li><a href="#">twitter</a></li>
								<li><a href="#">Linkedin</a></li>
								<li><a href="#">Instagram</a></li>
							</ul>
						</div></div>
						<div class="col-sm-3">
						<div class="single-widget">
							<h2>Contactez nous</h2>
							<ul class="nav nav-pills nav-stacked">
								<li> <a href="#"><i class="fa fa-phone"></i>mabroukefrei</a></li>
								<li><a href="#"><i class="fa fa-phone"></i>+330623025212</a></li>
								<li> <a href="#"><i class="fa fa-envelope"></i>only one </a></li>
								
							</ul>
						</div>
					</div>
					
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			
		</div>
		
	</footer><!--/Footer-->
	

  

	


</body>
</html>