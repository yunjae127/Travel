<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
<link href="https://fonts.googleapis.com/css?family=Cookie"
   rel="stylesheet">
<link rel="icon" type="image/png" href="./resources/img/gotravel_logo.jpg">
<link rel="stylesheet" href="./resources/css/swiper.min.css">

<link rel="stylesheet" type="text/css"
   href="./resources/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="./resources/css/reviewstyle.css">
<link
   href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
   rel="stylesheet"
   integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
   crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./resources/css/bootstrap.min.css" /> 

<script type="text/javascript" src="./resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
   src="./resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="./resources/js/event.js"></script>
<script type="text/javascript">

$(function(){
const fileDOM = document.querySelector('#file');
const previews = document.querySelectorAll('.image-box');

fileDOM.addEventListener('change', () => {
  const reader = new FileReader();
  reader.onload = ({ target }) => {
    previews[0].src = target.result;
  };
  reader.readAsDataURL(fileDOM.files[0]);
});

const fileDOM2 = document.querySelector('#file2');

fileDOM2.addEventListener('change', () => {
  const imageSrc = URL.createObjectURL(fileDOM2.files[0]);
  previews[1].src = imageSrc;
});

});
</script>

</head>
<body>

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

					<li class="nav-item active"><a class="nav-link font"
						href="contact.html">Contact us<span class="sr-only">(current)</span></a>
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

	<div class="container mt-5" id="blog">
		<div class="card-deck mt-3">
			<div class="card cardstyle">

				<div class="card-header">리뷰를 남겨주셔서 감사합니다!</div>
			
			<form action="reviewModify.do" method="post" enctype="multipart/form-data">
				<div class="card-body">
					<div class="flex-container">
						<div class="wrapper"> 
							<img
								src="./resources/upload/${review.image_New_Name}"
								class="image-box" /> 
								<c:if test="${sessionScope.id == review.review_Writer}"> 
								<label for="file" class="upload-btn">
								<input id="file" name="file" type="file" /> 
								</c:if>	
								<c:if test="${sessionScope.id != review.review_Writer}"> 
								<input type="hidden" id="file" name="file" type="file" /> 
								</c:if>	
							</label>
							 
							</label>
						</div>

					</div>

					<h5 class="card-title">
						<input name="review_Num" type="hidden" value="${review.review_Num}" readonly />
						<input type ="text" name="review_Writer" id="review_Writer" class="float-left" value="${review.review_Writer}" readonly> </input>  
						<span style="margin-left: -150px;" >님의 리뷰입니다.</span>
						
					</h5>
				</div>
				<input type="text" name="review_Title" id="review_Title" class="reviewtitle" value="${review.review_Title}"/><br/> 
				<input type="text" name="review_Content" id="review_Content" class="reviewcontent" value="${review.review_Content}"/>
				<div class="card-footer text-muted">
						
						<c:if test="${sessionScope.id != review.review_Writer}">
								<input hidden="hidden" type="submit" value="수정"  class="btn btn-primary"> 
							<a href="reviewDelete.do"><input hidden="hidden" type="submit" value="삭제"  class="btn btn-primary"></a>
						</c:if>	
						<c:if test="${sessionScope.id == review.review_Writer}">
								<input type="submit" value="수정"  class="btn btn-primary"> 
							<a href="reviewDelete.do?review_Num=${review.review_Num}">삭제</a>
						</c:if>	
							</div>
							</form>
						</div>
					</div>

				</div>
			
				<div class="container-fluid pt-5 pb-5 backgroud" id='bottom3'>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12">
					<h4 class="text-center text-white">&copy;Copyrights 2023. All
						rights reserved by: go travel</h4>
				</div>
			</div>
		</div>
	</div>
</body>
</html>