<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>아이디/비밀번호 찾기</title>
<link rel="stylesheet" type="text/css" href="./resources/css/findid.css" />
<script type="text/javascript" src="./resources/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="./resources/js/findid.js"></script>
<script type="text/javascript">
window.onload = function() {
	frm3.onsubmit = function(e) {
        e.preventDefault();
           
        // 비밀번호 일치 
        var password1 = document.querySelector('#pw_check').value; 
        var password2 = document.querySelector('#pw2_3').value; 
        
        	if(password1 != password2){ 
        		alert("비밀번호가 일치하지 않습니다.");
        		return; 
        	}else{ 
        		frm3.submit();
        	} 
        
     }// frm  
} 
</script>
</head>
<body>

	<div class="tabSet">
		<ul class="tabs">
			<li><a href="#panel1-1" class="on">아이디 찾기</a></li>
			<li><a href="#panel1-2">비밀번호 찾기</a></li>
			<li><a href="#panel1-3">비밀번호 변경</a></li>
		</ul>
		
		<!-- 아이디 찾기  -->
		<div class="panels">
			<div class="panel" id="panel1-1"><br/>
					<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">
            
			<h2 class="card-title" style="color:#f58b34;"><img src="./resources/img/gotravel_logo.jpg"/></h2>
		</div> 
        
		<div class="card-body">
      <form name='frm1' id="frm1" action="index.jsp" class="form-signin" method="POST">
  		 <p class="text2"> ${findid2}</p>
  		 <div class="twoWord">
  		 	<label>이 름 :</label> 
         	<input type="text" size="30" name="name" id="name_1" class="form-control" pattern="[ㄱ-힣]{2,5}" placeholder="이름" required autofocus><br>
         </div>
         <div class="twoWord">
         <label>힌 트 :</label>  
         <input type="text" size="30" name="hint" id="hint_1" class="form-control" placeholder="힌트" required><br>
         </div>
         <div class="email_1">
         <label>이메일 :</label> 
         <input type="email" size="30" name="email" id="email_1" class="form-control" placeholder="이메일" required><br>
         </div>
         
		<p class="check" id="check">${check}</p><br/>
      
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">아이디 찾기</button>
      
      </form>
        
		</div>
         
		</div>
	</div>
		<div class="panel" id="panel1-2"><br/>
					<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">
            
			<h2 class="card-title" style="color:#f58b34;"><img src="./resources/img/gotravel_logo.jpg"/></h2>
		</div> 
        
		<div class="card-body">
      <form name="frm2" id="frm2" action="index.jsp" class="form-signin" method="POST">
  		 <p class="text2"> ${findid2}</p>
  		 
  		 <div class="threeWord">
  		 <label>아이디 :</label> 
         <input type="text" size="30" name="id" id="id_2" class="form-control" pattern="[a-z0-9]{5,12}" placeholder="아이디" required autofocus><br>
         </div>
         <div>
		 <label class="twoWord">힌 트:   </label> 
         <input type="text" size="30" name="hint" id="hint_2" class="form-control" placeholder="힌트" required><br>
       	 </div>
           
		<p class="check" id="check">${check}</p><br/>
        
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">비밀번호 찾기</button>
      </form>
		</div>
		</div>
	</div>
	
	<!-- 비밀번호 변경  -->
	<div class="panel" id="panel1-3"> 
		 <%
		 Object data = session.getAttribute("findid");
		 String finduid = (String)data;
  		 %>
  		 
	<div class="card align-middle" style="width:25rem;">
		<div class="card-title" style="margin-top:30px;">
            
			<h2 class="card-title" style="color:#f58b34;"><img src="./resources/img/gotravel_logo.jpg"/></h2>
		</div>
        
		<div class="card-body">
      <form name="frm3" id="frm3" action="index.jsp" class="form-signin" method="POST"> 
        
        <label>아이디 :</label> 
        <input type="text" size="30" name="id" id="id_3" class="form-control" pattern="[a-z0-9]{5,12}" placeholder="아이디" required autofocus><br>
        <label>현재 비밀번호 :</label> 
         <input type="password" size="23" name="pw" id="pw_3" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,12}$" placeholder="비밀번호" required ><br> 
        <label>변경 비밀번호 :</label> 
         <input type="password" size="23" name="pw_check" id="pw_check" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,12}$" placeholder="변경할 비밀번호" required ><br>
        <label>비밀번호 확인 :</label> 
         <input type="password" size="23" name="pw2" id="pw2_3" class="form-control" placeholder="비밀번호 재확인" required><br>
        <p class="check" id="check2">${resetpw_check}</p><br/>
        
        
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">비밀번호 변경</button>
      </form>
        
		</div>
        
		</div>
	</div>
			 
			<!-- /panels -->
		</div>
		<!-- /tabset -->
	</div>


</body>
</html>