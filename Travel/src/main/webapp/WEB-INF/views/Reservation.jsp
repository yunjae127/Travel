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
	let child = $("#inputGroupSelectChild");
	let calc =  $("#inputGroupSelectAdult option:selected").val()*adult.attr('price') + $("#inputGroupSelectChild option:selected").val()*child.attr('price')
	adult.on("change", function(){$('.totalprice').val($("#inputGroupSelectAdult option:selected").val()*adult.attr('price') + $("#inputGroupSelectChild option:selected").val()*child.attr('price'));})
	child.on("change", function(){$('.totalprice').val($("#inputGroupSelectAdult option:selected").val()*adult.attr('price') + $("#inputGroupSelectChild option:selected").val()*child.attr('price'));})

	$('#form-reserve').submit(
			function(){
				alert('주문성공');
			});
	let kName 		 = $("#kName");
	let eFName 		 = $("#eFName");
	let eLName 		 = $("#eLName");
	let birthDate 	 = $("#birthDate");
	let gender		 = $("#gender");
	let tel		 	 = $("#tel");
	
	$('#registbtn').click(function(){
		
		var userList = $('#userList')
		
		let tr = $('<tr/>');
		let td1 = $('<td/>');
		let td2 = $('<td/>');
		let td3 = $('<td/>');
		let td4 = $('<td/>');
		let td5 = $('<td/>');
		let td6 = $('<td/>');
		
		td1.text(kName.val());
		tr.append(td1);
		td2.text(eFName.val());
		tr.append(td2);
		td3.text(eLName.val());
		tr.append(td3);
		td4.text(birthDate.val());
		tr.append(td4);
		td5.text(gender.val());
		tr.append(td5);
		td6.text(tel.val());
		tr.append(td6);
		tr.append('<td><button class="delete">삭제<button></td>');
		userList.append(tr);
		
		
		
		
		$('#userList').on('click','.delete',function(){
			$(this).parent().parent().remove();
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
      <div class="product-img"></div>
      <div class="product-desc">
        <h2>
          상품정보
          
        </h2>
        <p>상품설명</p>
      </div>
      <div class="item-order">
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <span class="">상품명</span>
          </div>
          <input
            type="text"
            class="form-control"
            aria-label="Default"
            aria-describedby="inputGroup-sizing-default"
            placeholder="상품을 선택해주세요"
          />
        </div>
        
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <label class="" for="inputGroupSelect01">수량</label>
          </div>
          성인
          <select id="inputGroupSelectAdult" price="150">
            <option value="0">0</option>
            <option selected value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
          </select>
          아동
           <select id="inputGroupSelectChild" price="100">
            <option value="0">0</option>
            <option selected value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
          </select>
        </div>
        가격 :
        <input type="text" class="totalprice" name="totalprice" placeholder="인원수를 선택해주세요" readonly="readonly"/>
        <br/>
        <span>항공사</span>
          <input type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default"/>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <label for='fromDate'>출발일</label>
          </div>
          <input
            type="text"
            class="form-control"
            aria-label="Default"
            aria-describedby="inputGroup-sizing-default"
            id ='fromDate'
          />
        </div>
        <div class="input-group mb-3">
          <div class="input-group-prepend">
            <label for ='toDate'>도착일</label>
          </div>
          <input
            type="text"
            class="form-control"
            aria-label="Default"
            aria-describedby="inputGroup-sizing-default"
            id='toDate'
          />
          
        </div>
      </div>
    </div>
 				<div class="form">
                <div class="row-form">
                    <form class="form-horizontal" method='post' id=form-reserve action="">
                        <div class="header">예약자 정보</div>
							<div class="form-content">				
                            <h4 class="heading"></h4>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label>사용자 이름</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="한글로 최대 5글자" pattern="[ㄱ-힣]{2,5}" type="text">
                                </div>
                                <div class="col-sm-6">
                                
                                    <label>이메일</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="이메일 타입 형식" type="email">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label>전화번호</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="-포함 최대 14자리"  pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" type="text">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-6">
                                    <label>생년월일</label>
                                    <input class="form-control" id="exampleInputName2" placeholder="숫자 8글자(ex:20000412)" pattern="[0-9]{8}" type="text">
                                </div>
                      
                            <div class="form-group">
                                <div class="col-sm-12">
                                    <label>요청사항</label>
                                    <textarea class="form-control" placeholder="요청사항"></textarea>
                                </div>
                            </div>
                            <div class="clearfix">
                                <button type="submit" class="btn btn-default">예약하기</button>
                            </div>
                        </div>
                        </div>
                    </form>
                </div>
            </div>

	<br/>
	</body>
	
	<div class="footerReserv">
	<div class="tablehead">
	<h2>여행자 정보</h2>
	</div>
	<hr/>	
	<table id="userList" border="1px">
	<thead>
	<tr>
	 <td>한글이름</td> <td>영문 성</td> <td>영문이름</td> <td>생년월일</td> <td>성별</td> <td>연락처</td> <td>입력하기</td>
	</tr>
	<tr>
	<td><input type="text" id="kName" name="kName"/></td> <td><input type="text" id="eFName" name="eFName"/></td> <td><input type="text" id="eLName" name="eLName"/></td>
	<td><input type="text" id="birthDate" name="birthDate"/></td><td><input type="text" id="gender" name="gender"/></td><td><input type="text" id="tel" name="tel"/></td> <td><button type="button" id="registbtn">등록하기</button></td>
	</tr>
	</thead>
	<tbody>
	</tbody>
	</table>
    </div>
  
</html>