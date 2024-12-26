
						
						<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
						<h2 class="title text-center">
                            
                            <?php if(isset($_GET['category'])){echo $_GET['category'];}

                        else{echo "smart bike";} ?>
                        smart bike</h2>
						
						<?php 
                        if(isset($_GET['category'])){
							if(!is_array($data['prod_by_cat'])){
								?><p style="font-size: 20px;color:red;"> <?php
								echo $data['prod_by_cat']; ?></p><?php
								$c =0;
							}else{
								$c=count($data['prod_by_cat']);
							}
						}else if(isset($data['prod_data'])){
							$c=count($data['prod_data']);
						}
						
                        if($c != 0){
                        for($i=0 ; $i <$c ; $i++) { ?>
						<div class="col-sm-4">
							<div class="product-image-wrapper">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="<?php if(isset($_GET['category'])){echo $data['prod_by_cat'][$i]->image;} else{echo   $data['prod_data'][$i]->image;} ?>" style="width: 200px;height: 350px;" alt="" />
										<h2><?php if(isset($_GET['category'])){convert_cur($data['prod_by_cat'][$i]->price);} else{convert_cur($data['prod_data'][$i]->price);} ?></h2>
										<p><?php if(isset($_GET['category'])){echo $data['prod_by_cat'][$i]->title;} else{echo   $data['prod_data'][$i]->title;}?></p>
										
									</div>

									<div class="product-overlay">
										<div class="overlay-content">
												<div class="more_details" style="display: block;">
												<p class="de_all" > <span style="font-size: 20px;" class="det">nom:</span><span style="color: red;font-size: 20px;"><?php if(isset($_GET['category'])){echo $data['prod_by_cat'][$i]->title;} else{echo   $data['prod_data'][$i]->title;}?></span></p>

											<p class="deteils"  > <span style="font-size: 20px;" class="det">createur:</span><span style="color: red;font-size: 20px;"><?php if(isset($_GET['category'])){echo $data['prod_by_cat'][$i]->author;} else{echo   $data['prod_data'][$i]->author;}?></span></p>
											
												</div>
											
											<a href="<?= ROOT ?>add_to_cart/<?php if(isset($_GET['category'])){echo $data['prod_by_cat'][$i]->book_id;} else{echo   $data['prod_data'][$i]->book_id;}?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Ajouter a la carte</a>
											<a href="productdetails?product=<?php if(isset($_GET['category'])){echo $data['prod_by_cat'][$i]->book_id;} else{echo   $data['prod_data'][$i]->book_id;}?>" class="btn btn-default add-to-cart"><i class="fa fa-plus"></i>Plus de details</a>
										</div>
									</div>
								</div>
								<div class="choose">
									<ul class="nav nav-pills nav-justified">
										
										<li><a href="<?= ROOT ?>add_to_wishlist/<?php if(isset($_GET['category'])){echo $data['prod_by_cat'][$i]->book_id;} else{echo   $data['prod_data'][$i]->book_id;}?>"><i class="fa fa-plus-square"></i>Ajouter à la liste de souhaits</a></li>

										
									</ul>
								</div>
							</div>
						</div>
					
						<?php }} ?>
					
						
					</div><!--features_items-->