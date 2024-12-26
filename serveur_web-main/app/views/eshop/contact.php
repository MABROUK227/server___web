<?php $this->view("header",$data); ?>
	 
	 <div id="contact-page" class="container">
	 <div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="Home">Home</a></li>
				  <li class="active">Contact</li>
				</ol>
			</div>
    <div>
    		<div class="row"> 
				<div class="col-sm-2">

				</div> 	
	    		<div class="col-sm-8">
				<span id="err"><?php check_error() ?><span>
	    			<div class="contact-form">
	    				<h2 class="title text-center">Contactez-nous</h2>
	    				<div class="status alert alert-success" style="display: none"></div>
				    	<form id="main-contact-form" class="contact-form row"  method="post">
				            <div class="form-group col-md-6">
				                <input type="text" name="name" class="form-control" required="required" placeholder="Name">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="email" class="form-control" required="required" placeholder="Email">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="subject" class="form-control" required="required" placeholder="Subject">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Your Message Here"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5257.284666374815!2d2.361176376336359!3d48.78871817132278!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47e673e24e04a9c3%3A0xc55cb3e676f95321!2sEfrei!5e0!3m2!1sfr!2sfr!4v1734084327342!5m2!1sfr!2sfr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
						         <input  type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
				            </div>
				        </form>
	    			</div>
	    		</div>
	    		  			
	    	</div>  
    	</div>	
    </div>
	 </div><!--/#contact-page-->
	<?php $this->view("footer",$data); ?>
<style>	#err{
			color: red;
			font-style: italic;
			
		}</style>
