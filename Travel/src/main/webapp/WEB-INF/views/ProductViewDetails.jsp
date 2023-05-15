<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>상품 상세 설명(뉴욕)</title>
        <!-- Favicon-->
        <link rel="icon" type="./resources/img/kakao_login.png" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./resources/css/viewdetail.css" rel="stylesheet" />
        
    </head>
    <body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand">상품 상세 설명</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="home.do">홈으로</a></li> 
                    </ul>
                   
                </div>
            </div>
        </nav>
        <!-- Product section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="./resources/upload/${product.image_New_Name}" alt="여행지의 사진이다" /></div>
                    <div class="col-md-6">
                        <div class="small mb-1">패키지 정보</div>
                        <h1 class="display-5 fw-bolder">${product.product_Name}</h1>
                         <input name="product_Id" type="hidden" value="${product.product_Id}"/>
                        <div class="fs-5 mb-5">
                            <span value="${product.product_Price}">${product.product_Price} 원</span>
                        </div>
                        <p class="lead">
                        ${product.product_Content}
                        </p>
                                  <br/>
                                  <div class="d-flex"> 
                            <a href="Reservation.do?product_Id=${product.product_Id}"><button class='btn btn-outline-dark reservation' type="button">예약하기</button></a>
                            <a href="hotellist.do"><button class='btn btn-outline-dark reservation' type="button">호텔보기</button></a>
                        </div>
                    </div>
                     </div>
                    
                </div>
      
        </section>
        <!-- Related items section-->
        <section class="py-5 bg-light">
            <div class="container px-4 px-lg-5 mt-5">
                <h2 class="fw-bolder mb-4">관련 상품</h2>
                
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                  <c:set var="i" value="0" />
                         <c:set var="j" value="4" />
                          <table  border="1">
                         <c:forEach items="${subProduct}" var="subProduct">
                    <div class="col mb-5">
                        <div class="card h-100">
                        
                         
                            <!-- Product image-->
                            <c:if test="{i%j == 0}">
                             <tr>
                           </c:if>
                           
                           	<td> 
                           	
                     
                            <img class="card-img-top" style="width:300px;height:200px;" src="./resources/upload/${subProduct.image_New_Name}" alt="캘리포니아의 LA사진" />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    
                                    	
                                    <h5 class="fw-bolder">${subProduct.product_Place}</h5>
                                  
                                     <div class="d-flex justify-content-center small text-warning mb-2">
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                        <div class="bi-star-fill"></div>
                                    </div>
                                    
                                    <!-- Product price-->
                                    ${subProduct.product_Price} 원
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="ProductViewDetails.do?product_Id=${subProduct.product_Id}">상품보기</a></div>
                            </div>
                              </td>
                              <c:if test="${i%j == j-1}"> 
                               </tr>
                               </c:if> 
                                 <c:set var="i" value="${i+1}" /> 
                                     </div>
                        
                    </div>
                                </c:forEach>
                                       </table>
                        </div>
                    </div>
                     
                    
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; 여행가자 2023</p></div>
        </footer>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./resources/js/viewdetail.js"></script>

    </body>
</html>