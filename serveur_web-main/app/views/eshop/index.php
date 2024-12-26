 
	<?php $this->view("header",$data); ?>
	<section id="slider"><!--slider-->
		<div class="container">
			
		</div>
	</section><!--/slider-->
	
	<section>
	<?php $this->view("aside",$data); ?>

	
		
	<?php $this->view("books",$data); ?>
	<?php $this->view("newest",$data); ?>			
	
					
				</div>
			</div>
		</div>
	</section>
	
<?php $this->view("footer"); ?>