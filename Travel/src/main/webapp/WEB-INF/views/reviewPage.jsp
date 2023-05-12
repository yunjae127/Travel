<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>리뷰</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="./resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/./resources/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="./resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="./resources/css/reviewBoardstyle.css" rel="stylesheet">
    
</head>

<body>


    <!-- Navbar Start -->
    <div class="container-fluid p-0">
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-2 py-lg-0 px-lg-5">
            <a href="index.html" class="navbar-brand d-block d-lg-none">
            </a>

            <div class="collapse navbar-collapse justify-content-between px-0 px-lg-3" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">
                    <a href="index.do" class="nav-item nav-link">홈</a>
                    <a href="reviewPage.do" class="nav-item nav-link active">리뷰게시판</a>
                    <div class="nav-item dropdown">
					</div>
                        </div>
            </div>
            <a href="">고객센터 </a>
            &nbsp;
            <a href="">마이페이지 </a>
            &nbsp;
            <a href="">회원가입 </a>
        </nav>
        
    </div>
    <!-- Navbar End -->


    <!-- News With Sidebar Start -->
    <div class="container-fluid mt-5 pt-3">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <div class="row">
                        <div class="col-12">
                            <div class="section-title">
                                <h4 class="m-0 text-uppercase font-weight-bold">이 달의 베스트 여행 후기</h4>
                                <a class="text-secondary font-weight-medium text-decoration-none" href="">모두보기</a>
                            </div>
                        </div>
                         <c:forEach items="${reviewListTop}" var="top">
                         
                        <div class="col-lg-6">
                         
                            <div class="position-relative mb-3">
                          
                                <img class="img-fluid w-100" src="./resources/upload/${top.image_New_Name}" style="object-fit: cover;">
                                <div class="bg-white border border-top-0 p-4">
                                    <div class="mb-2">
                                        <a class="badge badge-primary text-uppercase font-weight-semi-bold p-2 mr-2"
                                            href="">오늘의 베스트 후기!</a>
                                        <a class="text-body" href=""><small>${top.review_Date}</small></a>
                                    </div>
                                    <a class="h4 d-block mb-3 text-secondary text-uppercase font-weight-bold" href="reviewGetPage.do?review_Num=${top.review_Num}">글 제목 : ${top.review_Title}</a>
                                    <p class="m-0">내용 미리보기 : ${top.review_Content}</p>
                                </div>
                                <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                    <div class="d-flex align-items-center">
                                        <img class="rounded-circle mr-2" src="./resources/img/user.jpg" width="25" height="25" alt="">
                                        <small>${top.review_Writer}</small>
                                    </div>
                                    <div class="d-flex align-items-center">
                                        <small class="ml-3"><i class="far fa-eye mr-2"></i>글번호 : ${top.review_Num}</small>
                                        <small class="ml-3"><i class="far fa-comment mr-2"></i>조회수 : ${top.review_Count}</small>
                                       
                                    </div>
                                    
                                </div>
                                
                            </div> 
                        </div>
                        </c:forEach>
                        
                        </div>
                        </div>
                        </div>
                        </div>
                        </div>
                        
<section class="notice">
  <!-- board list area -->
    <div id="board-list">  
    	 
        <div class="container">
        <a href="reviewWrite.do"><button class="reviewbtn">리뷰작성</button></a>
            <table class="board-table">
                <thead>
                <tr>
                    <th scope="col" class="th-num">번호</th>
                    <th scope="col" class="th-num">조회수</th>
                    <th scope="col" class="th-title">제목</th>
                    <th scope="col" class="th-date">등록일</th>
                </tr>
                </thead>
                <tbody>
                 <c:forEach items="${reviewList}" var="review">
                 
                <tr> 
                	<td>${review.review_Num}</td>
                	<td>${review.review_Count}</td>
                	<th><a href="reviewGetPage.do?review_Num=${review.review_Num}">${review.review_Title}</a></th>
                    <td>${review.review_Date}</td>
                </tr>
				</c:forEach> 
                </tbody>
            </table>
        </div>
    </div>
        <!-- board seach area -->
    <div id="board-search">
        <div class="container">
            <div class="search-window">
                <form action="">
                    <div class="search-wrap">
                        <label for="search" class="blind">공지사항 내용 검색</label>
                        <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
                        <button type="submit" class="btn btn-dark">검색</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
   

</section>
                       
    <!-- Back to Top -->
    <a href="#" class="btn btn-primary btn-square back-to-top"><i class="fa fa-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/./resources/js/bootstrap.bundle.min.js"></script>
    <script src="./resources/lib/easing/easing.min.js"></script>
    <script src="./resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="./resources/js/reviewBoard.js"></script>
</body>

</html>