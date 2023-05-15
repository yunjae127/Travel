<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <!-- Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"

    />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"  >
    <link rel="stylesheet" type="text/css"
  href="http://code.jquery.com/ui/1.10.0/themes/ui-lightness/jquery-ui.css" />

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
<link rel="stylesheet" href="./resources/css/reservationStyle.css">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"

    ></script>
    <script
      src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"

    ></script>
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet" />
    <style>
      * {
        font-family: "Jua", sans-serif;
      }
      .product-img {
        width: 500px;
        height: 300px;
        background-image: 
        background-position: center;
        background-size: cover;
      }
      .product-desc {
        width: 500px;
        margin-top: 20px;
        margin-bottom: 20px;
      }

      .price {
        font-size: 20px;
        font-style: italic;
      }

      .item-order {
        width: 500px;
      }

      .btn-order {
        margin: auto;
        width: 100px;
        display: block;
      }
      .wrap {
        width: 500px;
        margin-left : 200px;

      }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script type="text/javascript"   src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript"  src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.0/i18n/jquery-ui-i18n.min.js"></script>
<script type="text/javascript">
$(function(){
	var d = new Date().toLocaleDateString();
	$('#today').text(d);
	$.datepicker.setDefaults($.datepicker.regional['ko']);
	
	$('#fromDate').datepicker({
		dateFormat : 'yy-mm-dd',
		onClose : function(selectedDate){
			$('#toDate').datepicker('option','minDate',selectedDate)
		}
	});
	$('#toDate').datepicker({
		dateFormat : 'yy-mm-dd',
		onClose : function(selectedDate){
			$('#fromDate').datepicker('option','maxDate',selectedDate)
		}
	});
	let adult = $("#inputGroupSelectAdult");
	adult.on("change", function(){$('.totalprice').val($("#inputGroupSelectAdult option:selected").val()*adult.attr('price')),$('#companion_Num').val($("#inputGroupSelectAdult option:selected").val())})

	


	/* $('#registbtn').click(function(){
		
		let comParam={
		companion_Name 			 : $("#companion_Name").val(),
		companion_Efname 		 : $("#companion_Efname").val(),
		companion_Elname 		 : $("#companion_Elname").val(),
		companion_Gender	 	 : $("#companion_Gender").val(),
		companion_Birthdate		 : $("#companion_Birthdate").val()
		}
		
		$.ajax({
			type:'post',
			data:comParam,
			url:'./companionInsert/new',
			success:function(result){
				companionList();
			},
			error:function(err){
				alert('error');
				console.log(err)
			}
			
		})//end of companionInsert ajax
		
		function companionList(){
			$.ajax({
				type:'get',
				data : {companion_Birthdate : $('#companion_Birthdate').val()},
				url:'./companionList',
				success:makeList(result),
				error:function(err){
					alert('error');
					console.log(err);
				}
			})//end of companionList ajax
			
			function makeList(result){
				var userList = $('#userList')
				
				
				for(row of result){
					let tr = $('<tr/>');
					let companion_Num= $('<td/>').text(row['companion_Num'])
					let companion_Name= $('<td/>').text(row['companion_Name'])
					let companion_Efname= $('<td/>').text(row['companion_Efname'])
					let companion_Elname= $('<td/>').text(row['companion_Elname'])
					let companion_Gender= $('<td/>').text(row['companion_Gender'])
					let companion_Birthdate= $('<td/>').text(row['companion_Birthdate'])
					tr.append(companion_Num)
					tr.append(companion_Name);
					tr.append(companion_Efname);
					tr.append(companion_Elname);
					tr.append(companion_Gender);
					tr.append(companion_Birthdate);
					tr.append('<td><button class="delete">삭제</button></td>');
					userList.append(tr);
					
				}//end of for row of result
				 $('#userList').on('click','button',function(){
				      let btn = $(this);
				      let product_Id = btn.parents('tr').children().eq(0).text();
				      //alert(product_Id);
				      if(btn.text().trim() =='삭제'){
				         //삭제 버튼일 경우
				         productDelete(product_Id);
				      }
				      });
				

			}//end of makeList
		}//end of companionList
		
			
		}) */
		
		
		$('#formSubmit').click(function(){
			
			let param = {
					booking_Name : $('#booking_Name').val(),
					booking_Tel : $('#booking_Tel').val(),
					booking_Email : $('#booking_Email').val(),
					booking_BirthDate : $('#booking_BirthDate').val(),
					companion_Num : $('#companion_Num').val(),
					booking_Content : $('#booking_Content').val(),
					booking_Price : $('#booking_Price').val(),
					member_Id : $('#member_Id').val()
			}
			$.ajax({
				type:'post',
				data : param,
				url: "./reservationInsert.do",
				success:function(result){
					alert("예약에 성공하셨습니다!")
				},
			error:function(err){
				alert('error')
				console.log(err);
			}
			})
			
		})
		
		
		
	})



    </script>
    <title>예약하기</title>
  </head>
<header>

 	<div>
 	<h2 class="headerReserv">예약 화면</h2>
 	<a href="./index.jsp">메인페이지로</a>
 	<a href="./customeransw.do">고객센터</a>
 	<a href="./mypage.do">마이페이지</a>
 	<a href="./singUp.do">회원가입</a>
 	<hr/>
 	</div>
 	</header>
 	  <body>
    <div class="wrap">
      <img src="./resources/upload/${resProduct.image_New_Name}"/>
      <div class="product-desc">
        <h2>
          상품정보
        </h2>
        <p>상품설명</p>
         <p class="lead">
                        ${resProduct.product_Content}
                        </p>
      </div>
      <div class="item-order">
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="">상품명</span>
          </div>
			<span class="">${resProduct.product_Name}</span>
        </div>
        

        
        <br/>
        <span>항공사</span>
          <span class="">${resProduct.product_AirLine}</span>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <label for='fromDate'>출발일</label>
          </div>
		<span class="">${resProduct.product_Depature}</span>
        </div>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <label for ='toDate'>도착일</label>
          </div>
 			<span class="">${resProduct.product_Array}</span>	
          
        </div>
      </div>
      </div>
    
    			<div class= "containerform">
 				<div class="form">
                <div class="row-form">
                    <form class="form-horizontal" id="form-reserve" name="form-reserve" action="reservationInsert.do">
                        <div class="header">예약자 정보</div>
							<div class="form-content">				
                            <h4 class="heading"></h4>
                            <div class="form-group">
                            <input type="text"  name="member_Id" id="member_Id" value="${sessionScope.id}" readonly>
                                <div class="col-sm-6">
                                	<label>사용자 이름</label>
                                    <input class="form-control" name="booking_Name" id="booking_Name" placeholder="한글로 최대 5글자" pattern="[ㄱ-힣]{2,5}" type="text">
                                </div>
                                <div class="col-sm-6">
                                    <label>이메일</label>
                                    <input class="form-control" name="booking_Email" id="booking_Email" placeholder="이메일 타입 형식" type="email">
                                </div>
                                <div class="col-sm-12">
                                    <label>전화번호</label>
                                    <input class="form-control" name="booking_Tel" id="booking_Tel" placeholder="-포함 최대 14자리"  pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" type="text">
                                </div>
                                <div class="col-sm-6">
                                    <label>생년월일</label>
                                    <input class="form-control" name="booking_BirthDate" id="booking_BirthDate" placeholder="숫자 8글자(ex:20000412)" pattern="[0-9]{8}" type="text">
                                </div>
                                <div class="col-sm-6">
                                    <label>동행자 숫자</label>
                                    <input class="form-control" name="companion_Num" id="companion_Num" value="0" readonly type="text">
                                </div>
                        
          
         					   <div class="col-sm-6" >
         						 인원수를 선택해주세요
        							  <select id="inputGroupSelectAdult" price="${resProduct.product_Price}" >
            							<option selected value="0">0</option>
           								 <option value="1">1</option>
           							 <option value="2">2</option>
           							 <option value="3">3</option>
           							 <option value="4">4</option>
            						<option value="5">5</option>
            						<option value="6">6</option>
            						<option value="7">7</option>
            						<option value="8">8</option>
           							 <option value="9">9</option>
           							 <option value="10">10</option>
         							 </select>
         							  <br/>
                                    <label>가격</label>
                                    <input name="booking_Price" class="totalprice" id="booking_Price"  readonly value="0" type="text">
                                </div>
                                <div class="col-sm-12">
                                    <label>요청사항</label>
                                    <textarea class="form-control" name="booking_Content" id="booking_Content" placeholder="요청사항"  ></textarea>
                                </div>
                                <div class="clearfix"> 
                                <button type="button" id="formSubmit" class="btn btn-default">예약하기</button> 
                            </div>
                            </div>
                            </div>
                            </form>
                        </div>
                        </div>
                </div>
                
    
   

	<br/>
	</body>
	
<!-- 	<div class="footerForm">
	<div class="footerReserv">
	<hr/>
	<form class="form-horizontal" method='post' action="">
	<div class="tablehead">
	<h2>동행자 입력</h2>
	</div>	
	<table id="userList" border="1px">
	<thead>
	<tr>
	 <td style="width:200px">번호</td><td>한글이름</td> <td>영문 성</td> <td>영문이름</td> <td>생년월일</td> <td>성별</td> <td>입력하기</td>
	</tr>
	<tr>
	<td>번호</td>
	<td><input type="text" id="companion_Name" name="companion_Name" placeholder="한글로 최대 5글자" pattern="[ㄱ-힣]{2,5}"/></td>
	<td><input type="text" id="companion_Efname" name="companion_Efname" pattern="[a-zA-Z]"/></td> 
	<td><input type="text" id="companion_Elname" name="companion_Elname" pattern="[a-zA-Z]"/></td>
	<td><input type="text" id="companion_Birthdate" name="companion_Birthdate" placeholder="숫자 8글자(ex:20000412)" pattern="[0-9]{8}"/></td>
	<td><input type="text" id="companion_Gender" name="companion_Gender"/></td> 
	<td><button type="button" style="width:200px"id="registbtn">등록하기</button></td>
	</tr>
	</thead>
	<tbody>
	</tbody>
	</table>
	</form>
    </div>
    </div> -->
  
</html>