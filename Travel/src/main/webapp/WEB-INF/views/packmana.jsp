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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="./resources/js/packmana.js"></script>
<script type="text/javascript">







</script>

</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a class="navbar-brand ps-3" href="index.html">관리자 페이지</a>
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
						<a class="nav-link" href="charts.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-chart-area"></i>
							</div> 판매현황
						</a> <a class="nav-link" href="tables.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 회원관리
						</a> <a class="nav-link" href="packmana.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 상품관리
						</a> <a class="nav-link" href="customeransw.jsp">
							<div class="sb-nav-link-icon">
								<i class="fas fa-table"></i>
							</div> 고객문의
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
							<table border="1">
								<tr>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="title" placeholder="상품명"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="550"
												style="border: 1px solid gray;" id="info" type="text" placeholder="상품정보"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="cost" type="text" placeholder="상품가격"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="450"
												style="border: 1px solid gray;" id="dis" type="text" placeholder="할인정보"/>
										</center></td>
										<td><center>
											<input type="file" value="입력" id="file" bgcolor="white"
												width="50" style="border: 1px solid white;">
										</center></td>
									<td><center>
											<input type="submit" value="입력" id="btn605" bgcolor="white"
												width="50" style="border: 1px solid white;" >
										</center></td>
								</tr>
							</table>
							<br />
							<table border="1" id="listTable" name="listTable">
								<tr>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>상품명</center></td>
									<td bgcolor="white" width="550" style="border: 1px solid gray;"><center>상품정보</center></td>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>상품가격</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>할인정보</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>이미지</center></td>
									<td bgcolor="white" width="50" style="border: 1px solid gray;"><center>삭제</center></td>
								</tr>
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
							<table border="1">
								<tr>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="title2" placeholder="상품명"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="550"
												style="border: 1px solid gray;" id="info2" type="text" placeholder="상품정보"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="cost2" type="text" placeholder="상품가격"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="450"
												style="border: 1px solid gray;" id="dis2" type="text" placeholder="할인정보"/>
										</center></td>
										<td><center>
											<input type="file" value="입력" id="file2" bgcolor="white"
												width="50" style="border: 1px solid white;">
										</center></td>
									<td><center>
											<input type="submit" value="입력" id="btn6052" bgcolor="white"
												width="50" style="border: 1px solid white;" >
										</center></td>
								</tr>
							</table>
							<br />
							<table border="1" id="listTable2" name="listTable2">
								<tr>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>상품명</center></td>
									<td bgcolor="white" width="550" style="border: 1px solid gray;"><center>상품정보</center></td>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>상품가격</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>할인정보</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>이미지</center></td>
									<td bgcolor="white" width="50" style="border: 1px solid gray;"><center>삭제</center></td>
								</tr>
							</table>
							<br />
						</div>
					</div>
					<br /> <br />
					
					
					
						<div class="card mb-4">
						<div class="card-header">

							<i class="fas fa-table me-1"></i> 잔여 이벤트 패키지 목록
						</div>
						<div class="card-body">
							<br />
							<table border="1">
								<tr>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="title3" placeholder="상품명"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="550"
												style="border: 1px solid gray;" id="info3" type="text" placeholder="상품정보"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="cost3" type="text" placeholder="상품가격"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="450"
												style="border: 1px solid gray;" id="dis3" type="text" placeholder="할인정보"/>
										</center></td>
										<td><center>
											<input type="file" value="입력" id="file3" bgcolor="white"
												width="50" style="border: 1px solid white;">
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="450"
												style="border: 1px solid gray;" id="count3" type="text" placeholder="수량"/>
										</center></td>
										<td><center>
											<input type="submit" value="입력" id="btn6053" bgcolor="white"
												width="50" style="border: 1px solid white;">
										</center></td>
								</tr>
							</table>
							<br />
							<table border="1" id="listTable3" name="listTable3">
								<tr>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>상품명</center></td>
									<td bgcolor="white" width="550" style="border: 1px solid gray;"><center>상품정보</center></td>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>상품가격</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>할인정보</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>이미지</center></td>
									<td bgcolor="white" width="50" style="border: 1px solid gray;"><center>수량</center></td>
									<td bgcolor="white" width="50" style="border: 1px solid gray;"><center>삭제</center></td>
								</tr>
							</table>
							<br />
						</div>
					</div>
					<br /> <br />
					
						<div class="card mb-4">
						<div class="card-header">

							<i class="fas fa-table me-1"></i> 잔여 이벤트 패키지 목록
						</div>
						<div class="card-body">
							<br />
							<table border="1">
								<tr>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="title4" placeholder="상품명"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="550"
												style="border: 1px solid gray;" id="info4" type="text" placeholder="상품정보"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="cost4" type="text" placeholder="상품가격"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="450"
												style="border: 1px solid gray;" id="dis4" type="text" placeholder="할인정보"/>
										</center></td>
										<td><center>
											<input type="file" value="입력" id="file4" bgcolor="white"
												width="50" style="border: 1px solid white;">
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="450"
												style="border: 1px solid gray;" id="count4" type="text" placeholder="수량"/>
										</center></td>
										<td><center>
											<input type="submit" value="입력" id="btn6054" bgcolor="white"
												width="50" style="border: 1px solid white;">
										</center></td>
								</tr>
							</table>
							<br />
							<table border="1" id="listTable4" name="listTable4">
								<tr>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>상품명</center></td>
									<td bgcolor="white" width="550" style="border: 1px solid gray;"><center>상품정보</center></td>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>상품가격</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>할인정보</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>이미지</center></td>
									<td bgcolor="white" width="50" style="border: 1px solid gray;"><center>수량</center></td>
									<td bgcolor="white" width="50" style="border: 1px solid gray;"><center>삭제</center></td>
								</tr>
							</table>
							<br />
						</div>
					</div>
					<br /> <br />
					
					<div class="card mb-4">
						<div class="card-header">

							<i class="fas fa-table me-1"></i> 호텔 정보
						</div>
						<div class="card-body">
							<br />
							<table border="1">
								<tr>
									<td><center>
											<input type="text" bgcolor="white" width="250"
												style="border: 1px solid gray;" id="title5" placeholder="이름"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="550"
												style="border: 1px solid gray;" id="info5" type="text" placeholder="설명"/>
										</center></td>
									<td><center>
											<input type="text" bgcolor="white" width="450"
												style="border: 1px solid gray;" id="loca5" type="text" placeholder="장소"/>
										</center></td>
									<td><center>
											<input type="file" value="입력" id="file5" bgcolor="white"
												width="50" style="border: 1px solid white;">
										</center></td>
										<td><center>
											<input type="submit" value="입력" id="btn6055" bgcolor="white"
												width="50" style="border: 1px solid white;">
										</center></td>
								</tr>
							</table>
							<br />
							<table border="1" id="listTable5" name="listTable5">
								<tr>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>이름</center></td>
									<td bgcolor="white" width="550" style="border: 1px solid gray;"><center>설명</center></td>
									<td bgcolor="white" width="250" style="border: 1px solid gray;"><center>장소</center></td>
									<td bgcolor="white" width="450" style="border: 1px solid gray;"><center>이미지</center></td>
									<td bgcolor="white" width="50" style="border: 1px solid gray;"><center>삭제</center></td>
								</tr>
							</table>
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
