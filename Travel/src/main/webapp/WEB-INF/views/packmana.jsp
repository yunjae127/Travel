<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>packmana</title>
<link
   href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css"
   rel="stylesheet" />
<link href="./resources/css/styles2.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
   crossorigin="anonymous"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  >
    <link rel="stylesheet" type="text/css"
  href="http://code.jquery.com/ui/1.10.0/themes/ui-lightness/jquery-ui.css" />
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
   <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"

    ></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
   <script type="text/javascript"   src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript"  src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/i18n/jquery-ui-i18n.min.js"></script>
<script src="./resources/js/packmana.js"></script>
<script type="text/javascript">
$(function(){
var d = new Date().toLocaleDateString();
$.datepicker.setDefaults($.datepicker.regional['ko']);

$('#product_Depature').datepicker({
   dateFormat : 'yy-mm-dd',
   onClose : function(selectedDate){
      $('#product_Depature').datepicker('option','minDate',selectedDate)
   }
});
$('#product_Array').datepicker({
   dateFormat : 'yy-mm-dd',
   onClose : function(selectedDate){
      $('#product_Depature').datepicker('option','maxDate',selectedDate)
   }
});
}) 

</script> 
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="manager.do">관리자 페이지</a>
		<a class="navbar-brand ps-3" href="home.do">홈으로 돌아가기</a>
	</nav>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<div class="collapse" id="collapsePages"
							aria-labelledby="headingTwo" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav accordion"
								id="sidenavAccordionPages">
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseAuth" aria-expanded="false"
									aria-controls="pagesCollapseAuth"> Authentication
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseAuth"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="login.html">Login</a> <a
											class="nav-link" href="register.html">Register</a> <a
											class="nav-link" href="password.html">Forgot Password</a>
									</nav>
								</div>
								<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
									data-bs-target="#pagesCollapseError" aria-expanded="false"
									aria-controls="pagesCollapseError"> Error
									<div class="sb-sidenav-collapse-arrow">
										<i class="fas fa-angle-down"></i>
									</div>
								</a>
								<div class="collapse" id="pagesCollapseError"
									aria-labelledby="headingOne"
									data-bs-parent="#sidenavAccordionPages">
									<nav class="sb-sidenav-menu-nested nav">
										<a class="nav-link" href="401.html">401 Page</a> <a
											class="nav-link" href="404.html">404 Page</a> <a
											class="nav-link" href="500.html">500 Page</a>
									</nav>
								</div>
							</nav>
						</div>
						<a class="nav-link" href="salesStatus.do">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 판매현황
						</a> <a class="nav-link" href="customerManager.do">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 회원관리
						</a> <a class="nav-link" href="packmana.do">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 상품관리
						</a>  
					</div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
         <main>
            <div class="container-fluid px-4">
               <h1 class="mt-4">상품관리</h1>

               <div class="card mb-4">
                  <div class="card-header">

                     <i class="fas fa-table me-1"></i> 이벤트 패키지
                  </div>
                  <div class="card-body">
                     <br />
                     <form  id="productfrm"> 
                     <input type='hidden' name='product_Id' id='product_Id' value='${product.product_Id}'>
                     <table border="1">
                        <tr>
                           <td>
                                 <input type="text" bgcolor="white" 
                                    style="border: 1px solid gray; width:200px" id="product_Name" name="product_Name" placeholder="상품명"/>
                              </td>
                           <td>
                                 <input type="text" bgcolor="white"
                                    style="border: 1px solid gray; width:400px;" id="product_Content" name="product_Content"  placeholder="상품정보"/>
                              </td>
                           <td>
                                 <input type="text" bgcolor="white" 
                                    style="border: 1px solid gray; width:150px;" id="product_Place" name="product_Place"  placeholder="장소"/>
                              </td>
                           <td>
                                 <input type="text" bgcolor="white" width="50"
                                    style="border: 1px solid gray; width:100px;" id="product_Price" name="product_Price" placeholder="가격"/>
                              </td>
                                 <td>
                                 <input type="text" bgcolor="white" width="50"
                                    style="border: 1px solid gray; width:50px;" id="product_Count" name="product_Count" placeholder="수량"/>
                              </td>
                                 <td>
                                 <input type="text" bgcolor="white" width="100"
                                    style="border: 1px solid gray; width:100px;" id="product_Depature" name="product_Depature" placeholder="출발일"/>
                              </td>
                                 <td>
                                 <input type="text" bgcolor="white" width="100"
                                    style="border: 1px solid gray; width:100px;" id="product_Array" name="product_Array" placeholder="도착일"/>
                              </td>
                                 <td>
                                 <input type="text" bgcolor="white" width="100"
                                    style="border: 1px solid gray; width:100px;" id="product_AirLine" name="product_AirLine" placeholder="항공사"/>
                              </td>
                              <td>
                                 <input type="file" value="이미지입력" id="file" bgcolor="white"
                                    width="50" name="file" style="border: 1px solid white;">
                              </td>
                           <td>
                                 <input type="button" value="입력" id="btn605" bgcolor="white"
                                    width="50" style="border: 1px solid white;" >
                              </td>
                        </tr>
                     </table>
                     </form>
                     <br />
                     <table border="1" id="listTableTitle" name="listTable">
                        <tr>
                              <td bgcolor="white" width="50" style="border: 1px solid gray;"><center>상품번호</center></td>
                           <td bgcolor="white" width="150" style="border: 1px solid gray;"><center>상품명</center></td>
                           <td bgcolor="white" width="350" style="border: 1px solid gray;"><center>상품정보</center></td>
                           <td bgcolor="white" width="200" style="border: 1px solid gray;"><center>장소</center></td>
                           <td bgcolor="white" width="100" style="border: 1px solid gray;"><center>가격</center></td>
                           <td bgcolor="white" width="100" style="border: 1px solid gray;"><center>수량</center></td>
                           <td bgcolor="white" width="150" style="border: 1px solid gray;"><center>출발일</center></td>
                           <td bgcolor="white" width="150" style="border: 1px solid gray;"><center>도착일</center></td>
                           <td bgcolor="white" width="150" style="border: 1px solid gray;"><center>항공사</center></td>
                           <td bgcolor="white" width="200" style="border: 1px solid gray;"><center>이미지</center></td>
                           <td bgcolor="white" width="55"  style="border : 1px solid gray;"><center>삭제</center></td>
                        </tr>
                        </table>
                        <table border="1" id=listTable>
                        <%-- <c:forEach items="${productLis}" var="product">
                           <tr>
                              <td>${product.product_Name}</td> 
                              <td>${product.product_Content}</td> 
                              <td>${product.product_Place}</td> 
                              <td>${product.product_Price}</td> 
                              <td>${product.product_Count}</td> 
                              <td>${product.product_Depature}</td> 
                              <td>${product.product_Array}</td> 
                              <td>${product.product_AirLine}</td> 
                              <td>${product.image_Name}</td> 
                              <td><input type="button" value="삭제" id="delete" bgcolor="white"
                                    width="50" style="border: 1px solid white;" ></td> 
                           </tr>
                        </c:forEach> --%>
                     </table>
                     
                     <br />
                  </div>
               </div>
               <br /> <br />
            
               
               
               <div class="card mb-4">
                  <div class="card-header">

                     <i class="fas fa-table me-1"></i> 일반 패키지
                  </div>
                  <div class="card-body">
                     <br />
                     <form  id="productfrm"> 
                     
                     <table border="1">
                        <tr>
                      
                           <td>
                                 <input type="text" bgcolor="white" 
                                    style="border: 1px solid gray; width:200px" id="product_Name" name="product_Name" placeholder="상품명"/>
                              </td>
                           <td>
                                 <input type="text" bgcolor="white"
                                    style="border: 1px solid gray; width:400px;" id="product_Content" name="product_Content"  placeholder="상품정보"/>
                              </td>
                           <td>
                                 <input type="text" bgcolor="white" 
                                    style="border: 1px solid gray; width:150px;" id="product_Place" name="product_Place"  placeholder="장소"/>
                              </td>
                           <td>
                                 <input type="text" bgcolor="white" width="50"
                                    style="border: 1px solid gray; width:100px;" id="product_Price" name="product_Price" placeholder="가격"/>
                              </td>
                                 <td>
                                 <input type="text" bgcolor="white" width="50"
                                    style="border: 1px solid gray; width:50px;" id="product_Count" name="product_Count" placeholder="수량"/>
                              </td>
                                 <td>
                                 <input type="text" bgcolor="white" width="100"
                                    style="border: 1px solid gray; width:100px;" id="product_Depature" name="product_Depature" placeholder="출발일"/>
                              </td>
                                 <td>
                                 <input type="text" bgcolor="white" width="100"
                                    style="border: 1px solid gray; width:100px;" id="product_Array" name="product_Array" placeholder="도착일"/>
                              </td>
                                 <td>
                                 <input type="text" bgcolor="white" width="100"
                                    style="border: 1px solid gray; width:100px;" id="product_AirLine" name="product_AirLine" placeholder="항공사"/>
                              </td>
                              <td>
                                 <input type="file" value="이미지입력" id="file" bgcolor="white"
                                    width="50" name="file" style="border: 1px solid white;">
                              </td>
                           <td>
                                 <input type="button" value="입력" id="btn605" bgcolor="white"
                                    width="50" style="border: 1px solid white;" >
                              </td>
                        </tr>
                     </table>
                     </form>
                     <br />
                     <table border="1" id="listTableTitle" name="listTable">
                        <tr>
                        <td bgcolor="white" width="50" style="border: 1px solid gray;"><center>상품번호</center></td>
                           <td bgcolor="white" width="150" style="border: 1px solid gray;"><center>상품명</center></td>
                           <td bgcolor="white" width="350" style="border: 1px solid gray;"><center>상품정보</center></td>
                           <td bgcolor="white" width="200" style="border: 1px solid gray;"><center>장소</center></td>
                           <td bgcolor="white" width="100" style="border: 1px solid gray;"><center>가격</center></td>
                           <td bgcolor="white" width="100" style="border: 1px solid gray;"><center>수량</center></td>
                           <td bgcolor="white" width="150" style="border: 1px solid gray;"><center>출발일</center></td>
                           <td bgcolor="white" width="150" style="border: 1px solid gray;"><center>도착일</center></td>
                           <td bgcolor="white" width="150" style="border: 1px solid gray;"><center>항공사</center></td>
                           <td bgcolor="white" width="200" style="border: 1px solid gray;"><center>이미지</center></td>
                           <td bgcolor="white" width="50"  style="border : 1px solid gray;"><center>삭제</center></td>
                        </tr>
                        </table>
                        <table border="1" id=listTable> 
                        <%-- <c:forEach items="${productLis}" var="product">
                           <tr>
                              <td>${product.product_Name}</td> 
                              <td>${product.product_Content}</td> 
                              <td>${product.product_Place}</td> 
                              <td>${product.product_Price}</td> 
                              <td>${product.product_Count}</td> 
                              <td>${product.product_Depature}</td> 
                              <td>${product.product_Array}</td> 
                              <td>${product.product_AirLine}</td> 
                              <td>${product.image_Name}</td> 
                              <td><input type="button" value="삭제" id="delete" bgcolor="white"
                                    width="50" style="border: 1px solid white;" ></td> 
                           </tr>
                        </c:forEach> --%>
                     </table>
                     
                     <br />
                  </div>

				 
					<br /> <br />
					
					<div class="card mb-4">
						<div class="card-header">

							<i class="fas fa-table me-1"></i> 호텔 정보
						</div>
						<div class="card-body">
							<br />
							<!--   enctype="multipart/form-data"  -->
							<form name="frm" id="frm"> 
							<table border="1">
							<tbody>
								<tr>
									<td><center>
											<input type="text" bgcolor="white" 
												style="border: 1px solid gray; width:250px;"  name="hotel_Name" id="title5" placeholder="이름"/>
										</center></td>
									
									<td><center>
											<input type="text" bgcolor="white" 
												style="border: 1px solid gray; width:250px;" name="hotel_Address" id="loca5"  placeholder="장소"/>
										</center></td>
										<td><center>
											<input type="text" bgcolor="white" "
												style="border: 1px solid gray; " name="hotel_Content" id="info5"  placeholder="설명"/>
										</center></td>
									 <td><center>
											<input type="text" bgcolor="white"  
												style="border: 1px solid gray; width: 200px;" name="hotel_Lat" id="Lat"  placeholder="위도"/>
										</center></td>
								<td><center>
											<input type="text" bgcolor="white"  
												style="border: 1px solid gray; width: 200px;" name="hotel_Lng" id="Lng"  placeholder="경도"/>
										</center></td>
    
									<td>  
										<center>
											<input type="file" value="사진" name="file" id="file5" bgcolor="white" multiple="multiple"
												 style="border: 1px solid white; width:300px;">
										</center>
										
										
										
										</td>
										<td><center>
											<input type="button" value="입력" id="btn6055" bgcolor="white"
												style="border: 1px solid white; width:70px;">
										</center></td>
								
								</tr>
								</tbody>
							</table> 
							</form>
							<table border="1" id="listTable5" name="listTable5">
						 
                        <tr>
                           <td bgcolor="white"  style="border: 1px solid gray; width:250px;"><center>이름</center></td> 
                           <td bgcolor="white"  style="border: 1px solid gray; width:250px;"><center>장소</center></td>
                           <td bgcolor="white"  style="border: 1px solid gray; width:550px;"><center>설명</center></td>
                           <td bgcolor="white"   style="border: 1px solid gray; width:200px;"><center>위도</center></td>
                           <td bgcolor="white"   style="border: 1px solid gray; width:200px;"><center>경도</center></td>
                           <td bgcolor="white"   style="border: 1px solid gray; width:55px;"><center>삭제</center></td>
                          
                        
                        </tr>
                     </table>
							<table id='hotelList' border='1'>
							</table>
							
						
							<br />
								 
							
							<br />
						</div>
					</div>
					<br /> <br />
				</div>
			</main>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="./resources/assets/demo/chart-area-demo.js"></script>
	<!-- <script src="./resources/assets/demo/chart-bar-demo.js"></script> -->
	<script
		src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js"
		crossorigin="anonymous"></script>
	<script src="./resources/js/datatables-simple-demo2.js"></script>
</body>
</html>
