<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>go ./home</title>
			<meta charset="utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0">
	
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    		<link href="https://fonts.googleapis.com/css?family=Cookie" rel="stylesheet">
			<link rel="icon" type="image/png" href="./resources/img/logo3.png">
			<link rel="stylesheet" href="./resources/css/swiper.min.css">
		
			<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" />
			<link rel="stylesheet" type="text/css" href="./resources/css/style.css">
			<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
		
			<script type="text/javascript" src="./resources/js/jquery-3.3.1.min.js"></script>
			<script type="text/javascript" src="./resources/js/bootstrap.bundle.min.js"></script>

	</head>


<body>
				<!--navbar-->
	<div id="navbar">
		<nav class="navbar bg-dark navbar-dark font navbar-expand-lg">
					  <a class="navbar-brand" href="#" target="blank"><img src="./resources/img/logo3.png" width="85px" height="50px"><span class="logoo"></span></a>
					  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
					    <span class="navbar-toggler-icon"></span>
					  </button>

					  <div class="collapse navbar-collapse" id="navbarSupportedContent">
					    <ul class="navbar-nav ml-auto id="float">
					      <li class="nav-item active">
							        <a class="nav-link font" id="home" href="home.html">Home<span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item active">
					        <a class="nav-link font" href="#fly">소개<span class="sr-only">(current)</span></a>
				      </li>

				      <li class="nav-item active">
					        <a class="nav-link font" href="#top">패키지<span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item active">
					        <a class="nav-link font" href="#chose">관광지 <span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item active">
					        <a class="nav-link font" href="#work">숙소<span class="sr-only">(current)</span></a>
				      </li>

				      <li class="nav-item active">
					        <a class="nav-link font" href="#gallery">할인<span class="sr-only">(current)</span></a>
				      </li>

				      <li class="nav-item active">
					        <a class="nav-link font" href="#blog">리뷰<span class="sr-only">(current)</span></a>
				      </li>

				      <li class="nav-item active">
					        <a class="nav-link font" href="contact.html">Contact us<span class="sr-only">(current)</span></a>
				      </li>
				      <div class="btn-group">
						<button type="button" class="btn btn-outline-primary dropdown-toggle mr-1" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#search">Search
 
						</button>
					</div>

					<div class="modal fade" id="search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        <form>
                  						<input type="Search" name="" class="form-control" placeholder="Search">
                  						<button type="submit" data-dismiss="modal" class="btn btn-outline-primary mt-2 mb-2">Search</button>
                				</form>
						      </div>
						      
						    </div>
						  </div>
					</div>


				

			 	<div class="btn-group">
  					<button type="button" class="btn btn-outline-primary dropdown-toggle" data-toggle="modal" aria-haspopup="true" aria-expanded="false" data-target="#login">
    				login
  					</button>
  				
				</div>

				<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title text-dark" id="exampleModalLabel">login</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        <form>
									  <div class="form-group">
									    <label for="exampleInputEmail1" class="text-dark">Email address</label>
									    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
									    <small id="emailHelp" class="form-text text-muted">We'll never share your email wif anyone else.</small>
									  </div>
									  <div class="form-group">
									    <label for="exampleInputPassword1" class="text-dark">Password</label>
									    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
									  </div>
									  <div class="form-group form-check">
									    <input type="checkbox" class="form-check-input" id="exampleCheck1">
									    <label class="form-check-label" for="exampleCheck1">Check me out</label>
									  </div>
									  <button type="submit" class="btn btn-primary">Submit</button>
								</form>

						      </div>
						      
						    </div>
						  </div>
					</div>


				      	

				      
				     
				      <li class="nav-item dropdown">
				        <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          
		        		</a>
		        
		     		 </li>
		      
		    	</ul>

			</div>
		</nav>
	</div>

				<!--section bar-->

	<div class="section">

        <h1>"여행가자"에서   여행가자!</h1>

        <div class="video-container">
            <div class="color-overlay"></div>
            <video autoplay loop muted>
                <source src="./resources/video/180607_A_101.mp4" type="video/mp4">
            </video>
        </div>

    </div>


	<!-- body-->

<div class="backgroud1">
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-sm-12 mb-5">
    			<div class="hovereffect">
        				<img class="img-fluid" src="./resources/img/thailand.jpg" alt="">
        			<div class="overlay">
           				<h2>스위스</h2>
           				<a class="info" href="view.html">상품정보 더보기</a>
        			</div>
    			</div>
			</div>



			<div class="col-md-4 col-sm-12 mb-5" id="fly">
    			<div class="hovereffect">
        				<img class="img-fluid" src="./resources/img/eiffel-tower-951517_1920.jpg" alt="">
        			<div class="overlay">
           				<h2>하와이</h2>
           				<a class="info" href="view.html">상품정보 더보기</a>
        			</div>
    			</div>
			</div>


			<div class="col-md-4 col-sm-12 mb-5">
    			<div class="hovereffect">
        				<img class="img-fluid" src="./resources/img/glacier-1082163_1920.jpg" alt="">
        			<div class="overlay">
           				<h2>시드니</h2>
           				<a class="info" href="view.html">상품정보 더보기</a>
        			</div>
    			</div>
			</div>

		</div>
	</div>
</div>

					<!--img cover-->

		<div class="container-fluid full">
			<div class="cover-img">
				<div class="container">

					<div class="row" id="top">
						<div class="col-md-12 col-sm-12 headi font1">
							<p>어떤 나라로 떠나고 싶으신가요?</p>
							<p>이곳에서 패키지 상품을 보시고 예약하세요</p>
							
						</div>
						

					</div>
					
				</div>
			</div>
			
		</div>

					<!--destination-->
	

					<div class="container mt-5 mb-5">
											
							<div class="container bac">
													 <div class="card-deck">
															  <div class="card cardstyle">
															    
															  	
															  		<img class="card-img-top" id="style" src="./resources/img/london.jpg" alt="Project 1">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">하와이</span><a href=""><span class="float-right">1500 hotel</span></a></h5>

																</div>

																<div class="card-footer text-muted">
											    						<a href="view.html" target="blank" class="btn btn-primary">패키지 상세정보</a>
											  					</div>
															  </div>
															  <div class="card cardstyle">
															    <img class="card-img-top" src="./resources/img/fdgsfgfg.jpg" alt="Project 2">
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">시드니</span><a href=""><span class="float-right">1500 hotel</span></a></h5>
																</div>
																<div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary" target="blank">패키지 상세정보</a>
											  					</div>
															  </div>
															  <div class="card cardstyle">
															    	<img class="card-img-top" src="./resources/img/ghgfhfgh.jpg" alt="Project 3">
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">이탈리아</span><a href=""><span class="float-right">1500 hotel</span></a></h5>
																</div>
																<div class="card-footer text-muted">
											    						<a href="view.html" target="blank" class="btn btn-primary">패키지 상세정보</a>
											  					</div>
															  </div>
													</div>


													<div class="card-deck mt-3">
															  <div class="card cardstyle">
															    	<img class="card-img-top" src="./resources/img/fghgfhgh.jpg" alt="Project 4">
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">타이페이</span><a href=""><span class="float-right">1500 hotel</span></a></h5>
																</div>
																<div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">패키지 상세정보</a>
											  					</div>
															  </div>
															  <div class="card cardstyle">
															    <img class="card-img-top" src="./resources/img/thggthtgh.jpg" alt="Project 5">
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">방콕</span><a href=""><span class="float-right">1500 hotel</span></a></h5>
																</div>
																<div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">패키지 상세정보</a>
											  					</div>
															  </div>
															  <div class="card cardstyle">
															    	<img class="card-img-top img-fluid" src="./resources/img/hggfhfgjhf.jpg" alt="Project 6">
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">뉴욕</span><a href=""><span class="float-right">1500 hotel</span></a></h5>
																</div>
																<div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">패키지 상세정보</a>
											  					</div>
															  </div>
													</div>


													   
							</div>
											
					</div>

														<!--3d-->


	<div class="container-fluid bac3 photo pb-5">
			


			<dir class="container-fluid">
					<div class="row p-5">
						<div class="col-sm-12">
							<h5 class="text-center hfont">수많은 고객들이 선택한 사이트</h5>
							<h2 class="text-center hfont">왜 "여행가자"인가?</h2>
						</div>
																			
					</div>
																		
			</dir>
																	



	<div class="swiper-container pb-5">
    <div class="swiper-wrapper">


								      <div class="swiper-slide">
								          <div class="imgbox">
								              <img src="./resources/img/book.jpg" class="img-fluid">
								          </div>
								          <div class="bg-dark">
								              <h3 class="p-1 text-white">1. 간단한 카테고리</h3>
								              <p class="p-2 text-white">한눈에 들어오는 여행 카테고리 
								              </p>

								          </div>
								      </div>


								      <div class="swiper-slide">
								          <div class="imgbox">
								              <img src="./resources/img/main.jpg" class="img-fluid">
								          </div>
								          <div class="bg-dark">
								              <h3 class="p-1 text-white">2. 다양한 패키지 상품</h3>
								              <p class="p-2 text-white">동남아부터 유럽, 미주 등 다양한 나라들을 모아둔 상품들
 
								              </p>

								          </div>
								      </div>


								      <div class="swiper-slide">
								          <div class="imgbox">
								              <img src="./resources/img/order.jpg" class="img-fluid">
								          </div>
								          <div class="bg-dark">
								              <h3 class="p-1 text-white">3. 몸만 가면 되는 여행</h3>
								              <p class="p-2 text-white">항공권부터 숙박까지 제공해 주는 패키지여행
								              </p>

								          </div>
								      </div>


								      <div class="swiper-slide">
								          <div class="imgbox">
								              <img src="./resources/img/dance.jpg" class="img-fluid">
								          </div>
								          <div class="bg-dark">
								              <h3 class="p-1 text-white">4. 실제 리뷰로 신뢰도 상승</h3>
								              <p class="p-2 text-white">리뷰 게시판을 통해 볼 수 있는 실제 여행객들의 생생한 후기
								              </p>

								          </div>
								      </div>
 
								    </div>


    

								    <div class="swiper-pagination"></div>
							 </div>


				</div>




														<!--travel chose -->

												<div class="container-fluid bac8 pb-5 pt-5" id="chose">
													<div class="container pt-5 pb-3">
														<div class="row">
															<div class="col-sm-12">
																<h3 class="color">The Very Best Of Travel, Chosen By Millions Of Travelers</h3>
																<h2 class="color">
																TRAVELERS' CHOICE AWARD WINNERS
																</h2>
															</div>
														</div>
														
													</div>

													<div class="container">
														
														<div class="row">
															<div class="col-md-4 col-sm-12 mt-2">
																 <div class="hovereffect">
																        <img class="img-fluid" src="./resources/img/hotel1.jpg" alt="">
																            <div class="overlay">
																	           <h2>HOTEL</h2>
																	           <a class="info" href="#">link here</a>
																	        </div>
																    </div>
															</div>
															<div class="col-md-4 col-sm-12 mt-2">
																<div class="hovereffect">
																        <img class="img-fluid" src="./resources/img/land.jpg" alt="">
																            <div class="overlay">
																	           <h2>ISLAND</h2>
																	           <a class="info" href="#">link here</a>
																	        </div>
																    </div>
															</div>
															<div class="col-md-4 col-sm-12 mt-2">
																<div class="hovereffect">
																        <img class="img-fluid" src="./resources/img/resotr.jpg" alt="">
																            <div class="overlay">
																	           <h2>ALL-INCLUSIVE RESORTS</h2>
																	           <a class="info" href="#">link here</a>
																	        </div>
																    </div>
															</div>
															
														</div>



														<div class="row">
															<div class="col-md-4 col-sm-12 mt-2">
																 <div class="hovereffect">
																        <img class="img-fluid" src="./resources/img/attack.jpg" alt="">
																            <div class="overlay">
																	           <h2>ATTRACTIONS</h2>
																	           <a class="info" href="#">link here</a>
																	        </div>
																    </div>
															</div>
															<div class="col-md-4 col-sm-12 mt-2">
																<div class="">
																        <img class="img-fluid mt-5" src="./resources/img/logo3.png" width="200px" height="200px" alt="">
																            
																 </div>
															</div>
															<div class="col-md-4 col-sm-12 mt-2">
																<div class="hovereffect">
																           <img class="img-fluid" src="./resources/img/landmarks.jpg" alt="">
																            <div class="overlay">
																	           <h2>LANDMARKS</h2>
																	           <a class="info" href="#">link here</a>
																	        </div>
																    </div>
															</div>
															
														</div>


														<div class="row">
															<div class="col-md-4 col-sm-12 mt-2">
																 <div class="hovereffect">
																        <img class="img-fluid" src="./resources/img/resturent.jpg" alt="">
																            <div class="overlay">
																	           <h2>RESTURANTS</h2>
																	           <a class="info" href="#">link here</a>
																	        </div>
																   </div>
															</div>
															<div class="col-md-4 col-sm-12 mt-2">
																<div class="hovereffect">
																        <img class="img-fluid" src="./resources/img/beach.jpg" alt="">
																            <div class="overlay">
																	           <h2>BEACH</h2>
																	           <a class="info" href="#">link here</a>
																	        </div>
																    </div>
															</div>
															<div class="col-md-4 col-sm-12 mt-2">
																<div class="hovereffect">
																        <img class="img-fluid" src="./resources/img/destination.jpg" alt="">
																            <div class="overlay">
																	           <h2>DESTINAIONS</h2>
																	           <a class="info" href="#">link here</a>
																	        </div>
																    </div>
															</div>
															
														</div>




													</div>
													
												</div>







												
											<!--how it works-->


									<div class="container mt-5 mb-5" id="work">


										<div class="container mt-3 mb-3">
														<div class="row">
															<div class="col-sm-12">
																<h4 class="color">Know More About Hotel</h4>
																<h2 class="color">
																SEE HOW IT WORKS?
																</h2>
															</div>
														</div>
														
													</div>
												<div class="container bac">
													  <div class="card-deck">
															  <div class="card cardstyle">
															    
															  	
															  		<img class="rounded-circle ddd m-auto" src="./resources/img/215810.png" alt="photo" width="140px" height="140px">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title">RENT A CAR</h5>
																	    <p class="card-text size">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
																	  </div>
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">View Details</a>
											  							</div>
															  </div>
															  <div class="card cardstyle">
															    
															  	
															  		<img class="rounded-circle ddd m-auto" src="./resources/img/97.jpg" alt="photo" width="140px" height="140px">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title">ACCOMODATION</h5>
																	    <p class="card-text size">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
																	  </div>
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">View Details</a>
											  							</div>
															  </div>
															  <div class="card cardstyle">
															    
															  	
															  		<img class="rounded-circle ddd m-auto" src="./resources/img/order.jpg" alt="photo" width="140px" height="140px">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title">RESTAURANT</h5>
																	    <p class="card-text size">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
																	  </div>
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">View Details</a>
											  							</div>
															  </div>
															</div>


															<div class="card-deck mt-3">
															  <div class="card cardstyle">
															    
															  	
															  		<img class="rounded-circle ddd m-auto" src="./resources/img/images (1).jpg" alt="photo" width="140px" height="140px">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title">SHOPPING CENTERS</h5>
																	    <p class="card-text size">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
																	  </div>
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">View Details</a>
											  							</div>
															  </div>
															  <div class="card cardstyle">
															    
															  	
															  		<img class="rounded-circle ddd m-auto" src="./resources/img/images (2).jpg" alt="photo" width="140px" height="140px">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title">ATTRACTIONS</h5>
																	    <p class="card-text size">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
																	  </div>
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">View Details</a>
											  							</div>
															  </div>
															  <div class="card cardstyle">
															    
															  	
															  		<img class="rounded-circle ddd m-auto" src="./resources/img/images.jpg" alt="photo" width="140px" height="140px">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title">TRANSPOTATION</h5>
																	    <p class="card-text size">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
																	  </div>
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">View Details</a>
											  							</div>
															  </div>
															</div>


													   
												</div>
											
										</div>


									<div class="container-fluid bac7 photo2 mb-5">
										<div class="container con">
											<div class="row pt-5">
												<div class="col-sm-12">
													<h5 class="text-center color2">Create A Custom Plan Based On Your Taste</h5>
													<h2 class="text-center color2">START MAKING YOUR TRAVEL PLANS</h2>

														<h5 class="text-center color2">Ducate, Aid, Criteria Catalyst John Lennon. Life-Saving Diversity Necessities Elevate Worldwide Carbon Rights Empowerment. Pursue These Aspirations Leverage, Accessibility UNICEF, Reduce Child Mortality Collaborative Cities Safeguards. Informal Economies Non-Partisan; Evolution Transformative Climate Change Local Benefit</h5>
													
												</div>
												<div class="row mt-3 m-auto">
												<div class="col-sm-12">
													
											    						<a href="" class="btn btn-success">View Details</a>
											  							

				
													</div>

												</div>
												
											</div>

										</div>

								</div>


												<!--photo gallery-->

	<div class="container" id="gallery">
		<div class="row">
			<div class="col-sm-12 m-auto">
				<h4 class="m-auto">Right Now</h4>
				<h2 class="m-auto">Photo Gallery</h2>

			</div>
			
			
		</div>

		<div class="row">
			<div class="col-md-3 col-sm-12 p-2">
				<img class="img-fluid grayscale" src="./resources/img/boy-1822614_1920.jpg">
			</div>

			<div class="col-md-3 col-sm-12 p-2">
				<img class="img-fluid grayscale" src="./resources/img/thailand.jpg">
			</div>

			<div class="col-md-3 col-sm-12 p-2">
				<img class="img-fluid grayscale" src="./resources/img/back.jpg">
			</div>

			<div class="col-md-3 col-sm-12 p-2">
				<img class="img-fluid grayscale" src="./resources/img/forest-868715_1920.jpg">
			</div>
			

		</div>


		<div class="row">
			<div class="col-md-3 col-sm-12 p-2">
				<img class="img-fluid grayscale" src="./resources/img/book.jpg">
			</div>

			<div class="col-md-3 col-sm-12 p-2">
				<img class="img-fluid grayscale" src="./resources/img/96.jpg">
			</div>

			<div class="col-md-3 col-sm-12 p-2">
				<img class="img-fluid grayscale" src="./resources/img/birthday-1114056_1920.jpg">
			</div>

			<div class="col-md-3 col-sm-12 p-2">
				<img class="img-fluid grayscale" src="./resources/img/cupcakes-690040_1920.jpg">
			</div>
			

		</div>
		
	</div>


						<!--blog-->


					<div class="container mt-5" id="blog">
						<div class="col-sm-12">
							<h4 class="m-auto">Right Now</h4>
							<h2 class="m-auto">Our Latest Blog</h2>
						</div>

						<div class="card-deck mt-3">
															  <div class="card cardstyle">
															    
															  			<div class="card-header">
   																			 ITS A BRILLAINT CITY TO VISIT
  																		</div>
															  		<img class="card-img-top" id="style" src="./resources/img/beach-816578_1920.jpg" alt="Project 1">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">07 june 2018</span><a href=""><span class="float-right">100 Comments</span></a></h5>
																	  </div>
																	  <h5 class="card-text">sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</h5>

																																	
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">Read More</a>
											  							</div>
															  </div>
															  <div class="card cardstyle">
															    
															  			<div class="card-header">
   																			 ITS A BRILLAINT CITY TO VISIT
  																		</div>
															  		<img class="card-img-top" id="style" src="./resources/img/vw-camper-336606_1920.jpg" alt="Project 1">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">07 june 2018</span><a href=""><span class="float-right">100 Comments</span></a></h5>
																	  </div>
																	  <h5 class="card-text">sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</h5>

																																	
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">Read More</a>
											  							</div>
															  </div>
															  <div class="card cardstyle">
															    
															  			<div class="card-header">
   																			 ITS A BRILLAINT CITY TO VISIT
  																		</div>
															  		<img class="card-img-top" id="style" src="./resources/img/dog-190056_1280.jpg" alt="Project 1">
															  	
															    
															    <div class="card-body">
																	    <h5 class="card-title"><span class="float-left">07 june 2018</span><a href=""><span class="float-right">100 Comments</span></a></h5>
																	  </div>
																	  <h5 class="card-text">sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy</h5>

																																	
																	   <div class="card-footer text-muted">
											    						<a href="view.html" class="btn btn-primary">Read More</a>
											  							</div>
															  </div>
															</div>
						
					</div>


					<!--footer-->

					<div class="container-fluid mt-5 backgroud">
						<div class="container">
							<div class="row">
								<div class="col-md-6 col-sm-12">
									<h4 class="text-left text-white pt-3">SUBMIT NEWSLETTERS</h4>

                					<h5 class="text-left text-muted">sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy sanctus est Lorem ipsum dolor sit amet.</h5>
								</div>
								<div class="col-md-6 col-sm-12">
									<form>
                  						<input type="email" class="form-control mt-5 bac" name="" placeholder="Your-E-Mail-Id">
                					</form>
								</div>
								
							</div>
							
						</div>
						
					</div>


					<div class="container-fluid backgroud3">
						<div class="container">
							<div class="row">
								<div class="col-md-4 col-sm-12">
									<div class="text-left pt-3">
									<img src="./resources/img/logo.png" width="85px" height="50px">
									</div>
                					<h6 class="text-left text-muted">We Are active 24 hours.</h6>
                					<h6 class="text-left text-muted">Phone:+08801866936562</h6>
                					<h6 class="text-left text-muted">E-Mail: ashanaur009@gmail.com</h6>
                					
									<menu class="text-left">
										<ul id="social">
											<li><a href="#"><img src="./resources/img/facebook.png" alt="facebook share"></a></li>
											<li><a href="#"><img src="./resources/img/gplus.png" alt="facebook share"></a></li>
											<li><a href="#"><img src="./resources/img/linkedin.png" alt="facebook share"></a></li>
											<li><a href="#"><img src="./resources/img/twitter.png" alt="facebook share"></a></li>
											<li><a href="#"><img src="./resources/img/youtube.png" alt="facebook share"></a></li>

										</ul>
									</menu>
								</div>
								<div class="col-md-4 col-sm-12">
									<h2 class="text-left text-white pt-3">OUR SERVICE</h2>
									<ul class="list-group list-group-flush mb-5">
  										<li class="list-group-item bac text-left text-muted p-0">>Etiam Ullamcorper</li>
  										<li class="list-group-item bac text-left text-muted p-0">>Suspendisse A Pellentesque Dui</li>
  										<li class="list-group-item bac text-left text-muted p-0">>Pellentesque Dui Non Felis</li>
  										<li class="list-group-item bac text-left text-muted p-0">>Non Felis. Maecenas Malesuada</li>
  										<li class="list-group-item bac text-left text-muted p-0">>Etiam Ullamcorper</li>
  										<li class="list-group-item bac text-left text-muted p-0">>Etiam Ullamcorper</li>
  										<li class="list-group-item bac text-left text-muted p-0">>Pellentesque Dui Non Felis</li>

									</ul>
								</div>
								<div class="col-md-4 col-sm-12">
									<div>
										
										<h2 class="text-left text-white pt-3">KEEP IN TOUCH</h2>
									</div>
									<form>
                  						<input type="email" class="form-control bac" name="" placeholder="Your-E-Mail-Id">
                  						<textarea class="form-control bac mt-2" placeholder="Your Message"></textarea>
                  						<button type="submit" class="btn btn-outline-secondary mt-2 mb-2">Send Message</button>
                					</form>
								</div>
								
							</div>
							
						</div>
						
					</div>


					<div class="container-fluid pt-5 pb-5 backgroud">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12">
									<h4 class="text-center text-white">&copy;Copyrights 2018. All rights reserved by: go travel</h4>
								</div>
								
								
							</div>
							
						</div>
						
					</div>
				



		











				<!--  javascript   -->


	


		<script src="jquery.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>

<script>
			$('.owl-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})

		</script>


		<script type="text/javascript">
  

  var prevScrollpos = window.pageYOffset;
window.onscroll = function() {
  var currentScrollPos = window.pageYOffset;
  if (prevScrollpos > currentScrollPos) {
    document.getElementById("navbar").style.top = "0";
  } else {
    document.getElementById("navbar").style.top = "-100px";
  }
  prevScrollpos = currentScrollPos;
}

</script>

 <script src="./resources/js/swiper.min.js"></script>

  <script>
    var swiper = new Swiper('.swiper-container', {
      effect: 'coverflow',
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: 'auto',
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows : true,
      },
      pagination: {
        el: '.swiper-pagination',
      },
    });
  </script>
				  
	<script src="./resources/js/smoothscroll.js" type="text/javascript"></script>
	<script>$('a').smoothScroll({speed: 1500});</script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="./resources/js/parallax.min.js"></script>

	<script>$('.parallax-window').parallax();</script>
</body>
</html>