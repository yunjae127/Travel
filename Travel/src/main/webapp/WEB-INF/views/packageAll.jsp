<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>모든패키지 보기</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link href="https://fonts.googleapis.com/css?family=Cookie"
	rel="stylesheet">
<link rel="icon" type="image/png" href="./resources/img/logo3.png">
<link rel="stylesheet" href="./resources/css/swiper.min.css">

<link rel="stylesheet" type="text/css"
	href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./resources/css/style.css">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

<script type="text/javascript" src="./resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="./resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./resources/js/event.js"></script>
</head>
<body>
	<!--navbar-->
	<div id="navbar">
		<nav class="navbar bg-dark navbar-dark font navbar-expand-lg">
			<a class="navbar-brand" href="#" target="blank"><img
				src="./resources/img/gotravel_logo.jpg" width="85px" height="50px"><span
				class="logoo"></span></a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-auto id="float">
					<li class="nav-item active"><a class="nav-link font" id="home"
						href="index.jsp">Home<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#fly">소개<span class="sr-only">(current)</span></a></li>

					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#top">패키지<span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#chose">관광지 <span class="sr-only">(current)</span></a></li>
					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#work">숙소<span class="sr-only">(current)</span></a></li>

					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#gallery">할인<span class="sr-only">(current)</span></a></li>

					<li class="nav-item active"><a class="nav-link font"
						href="index.jsp#blog">리뷰<span class="sr-only">(current)</span></a></li>

					 <li class="nav-item active">
					        <a class="nav-link font" href="test1.jsp">QnA<span class="sr-only">(current)</span></a>
				      </li>
				       <li class="nav-item active"><a class="nav-link font"
                       href="mypage.jsp">마이페이지<span class="sr-only">(current)</span></a>
                       </li>
					<div class="btn-group">
						<button type="button"
							class="btn btn-outline-primary dropdown-toggle mr-1"
							data-toggle="modal" aria-haspopup="true" aria-expanded="false"
							data-target="#search">Search</button>
					</div>

					<div class="modal fade" id="search" tabindex="-1" role="dialog"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">

									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form>
										<input type="Search" name="" class="form-control"
											placeholder="Search">
										<button type="submit" data-dismiss="modal"
											class="btn btn-outline-primary mt-2 mb-2">Search</button>
									</form>
								</div>

							</div>
						</div>
					</div>




					<div class="btn-group">
						<button type="button"
							class="btn btn-outline-primary dropdown-toggle"
							data-toggle="modal" aria-haspopup="true" aria-expanded="false"
							data-target="#login">login</button>

					</div>

					<div class="modal fade" id="login" tabindex="-1" role="dialog"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title text-dark" id="exampleModalLabel">login</h5>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<form>
										<div class="form-group">
											<label for="exampleInputEmail1" class="text-dark">Email
												address</label> <input type="email" class="form-control"
												id="exampleInputEmail1" aria-describedby="emailHelp"
												placeholder="Enter email"> <small id="emailHelp"
												class="form-text text-muted">We'll never share your
												email wif anyone else.</small>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1" class="text-dark">Password</label>
											<input type="password" class="form-control"
												id="exampleInputPassword1" placeholder="Password">
										</div>
										<div class="form-group form-check">
											<input type="checkbox" class="form-check-input"
												id="exampleCheck1"> <label class="form-check-label"
												for="exampleCheck1">Check me out</label>
										</div>
										<button type="submit" class="btn btn-primary">Submit</button>
									</form>

								</div>

							</div>
						</div>
					</div>






					<li class="nav-item dropdown"><a class="nav-link" href="#"
						id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> </a></li>

				</ul>

			</div>
		</nav>
	</div>

	<div class="container mt-5 mb-5">
                                 
                     <div class="container bac">
                                        <div class="card-deck">
                                               <div class="card cardstyle">
                                                 <c:set var="i" value="0" />
                                     			<c:set var="j" value="3" />
                                               
                                                 <table border="1">
                                                  	<c:forEach items="${productList}" var="product">
                                                  	<c:if test="{i%j == 0}">
                                                  	<tr>
                                                  	</c:if>
                                                  	<td> 
                                                     <img class="card-img-top" id="style" style="width:300px; height:200px" src="./resources/upload/${product.image_New_Name}" alt="Project 1">
                                                  
                                                 
                                                 <div class="card-body">
                                                       <h5 class="card-title"><span class="float-left" >${product.product_Place} </span><span class="float-right" style="font-size:14px;">${product.product_Price} 원</span></h5>

                                                </div>

                                                <div class="card-footer text-muted">
                                                       <a href="ProductViewDetails.do?product_Id=${product.product_Id}" target="blank" class="btn btn-primary">패키지 상세정보</a>
                                                  </div>
                                               
                                              </td>
                                                       <c:if test="${i%j == j-1}"> 
                                                       </tr>
                                                       </c:if> 
                                                       <c:set var="i" value="${i+1}" /> 
                                       </c:forEach>
                                       </table>
                                                    <a href="packageAll.do" class="btn btn-primary pkall">패키지 전체보기</a>

                                          </div>
                                          </div>
                     </div>
                                 
               </div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
						<!--footer-->

					
						


					<div class="container-fluid pt-5 pb-5 backgroud" id='bottom3'>
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12">
								<img src="./resources/img/gotravel_logo.jpg" width="85px" height="50px">
									<h4 class="text-center text-white">&copy;Copyrights 2018. All rights reserved by: go travel</h4>
								</div>
								
								
							</div>
							
						</div>
						
					</div>
</body>
</html>