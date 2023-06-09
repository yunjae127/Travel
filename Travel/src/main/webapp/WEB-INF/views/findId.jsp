<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
    
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
   
   
   var modelone = '${modelone}';
   //alert(modelone);
   if( modelone == 'one'){
       $('.tabSet .tabs a').removeClass('on');
       $('.tabSet .tabs a[href="#panel1-2"]').addClass('on'); 
      
      $('.panel').hide();
      $('#panel1-2').show();
   }
    var changePw = '${changePw}';
    //alert(changePw);
           if(changePw == '0' || changePw == '1'){
              $('.tabSet .tabs a').removeClass('on');
              $('.tabSet .tabs a[href="#panel1-3"]').addClass('on');
              
              $('.panel').hide();
              $('#panel1-3').show();
   }
   
   
   
   
   
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
     
     /* var changePw = ${changePw};
     if(changePw == 0 ){
        
     }else{
        
     } */
     
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
      <form name='frm1' id="frm1" action="findIidd.do" class="form-signin" method="POST">
         <p class="text2"> ${findid2}</p>
        <input type="text" size="3" class="form-control" value="이름" readonly>
        <input type="text" size="30" name="member_Name" id="name_1" class="form-control" pattern="[ㄱ-힣]{2,5}" placeholder="이름" required autofocus><br>
        
        <input type="text" size="3" class="form-control" value="이메일" readonly>
        <input type="email" size="30" name="member_Email" id="email_1" class="form-control" placeholder="이메일" required><br>
       
        <input type="text"    size="3" class="form-control" value="힌트" readonly>
        <input type="text" size="30" name="member_Hint" id="hint_1" class="form-control" placeholder="힌트" required><br>
       
      <p class="check" id="check">${check}</p><br/>
      
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">아이디 찾기</button>
      
      </form>
      
      
      <br/>
      <br/>
      <c:choose>
      <c:when test="${FindIdd != null}">
      <h1>${FindIdd}가 아이디입니다</h1>
      </c:when>
      <c:when test="${error == '없음'}">
      <h1>아이디를 찾을 수 없습니다.</h1>
      </c:when>
      </c:choose>
      
      </div>
         
      </div>
   </div>
   
   
      <!-- 비밀번호 찾기 -->
      <div class="panel" id="panel1-2"><br/>
               <div class="card align-middle" style="width:25rem;">
      <div class="card-title" style="margin-top:30px;">
            
         <h2 class="card-title" style="color:#f58b34;"><img src="./resources/img/gotravel_logo.jpg"/></h2>
      </div> 
        
      <div class="card-body">
      <form name="frm2" id="frm2" action="findPw.do" class="form-signin" method="POST">
         <p class="text2"> ${findid2}</p>
         
        <input type="text" size="3" class="form-control" value="아이디" readonly>
        <input type="text" size="30" name="Member_Id" id="id_2" class="form-control" pattern="[a-z0-9]{5,12}" placeholder="아이디" required autofocus><br>
        <input type="text" size="3" class="form-control" value="이메일" readonly>
        <input type="email" size="30" name="Member_Email" id="email_2" class="form-control" placeholder="이메일" required><br>
        <input type="text"    size="3" class="form-control" value="힌트" readonly>
        <input type="text" size="30" name="Member_Hint" id="hint_2" class="form-control" placeholder="힌트" required><br>
       
      <p class="check" id="check">${check}</p><br/>
        
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">비밀번호 찾기</button>
      </form>
      
      <br/>
      <br/>
      <c:choose>
      <c:when test="${FindPww != null}">
      <h1>${FindPww}</h1>
      </c:when>
      <c:when test="${errortwo == 'no'}">
      <h2>비밀번호를 찾을 수 없습니다</h2>
      </c:when>
      </c:choose>
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
      <form name="frm3" id="frm3" action="changePw.do" class="form-signin" method="POST"> 
        
        <label>아이디 :</label> 
        <input type="text" size="30" name="member_Id" id="id_3" class="form-control" pattern="[a-z0-9]{5,12}" placeholder="아이디" required autofocus><br>
        <label>현재 비밀번호 :</label> 
         <input type="password" size="23" name="member_Password" id="pw_3" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,12}$" placeholder="비밀번호" required ><br> 
        <label>변경 비밀번호 :</label> 
         <input type="password" size="23" name="pw_check" id="pw_check" class="form-control" pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\d~!@#$%^&*()+|=]{8,12}$" placeholder="변경할 비밀번호" required ><br>
        <label>비밀번호 확인 :</label> 
         <input type="password" size="23" name="pw2" id="pw2_3" class="form-control" placeholder="비밀번호 재확인" required><br>
        <p class="check" id="check2">${resetpw_check}</p><br/>
        
        
        <button id="btn-Yes" class="btn btn-lg btn-primary btn-block" type="submit">비밀번호 변경</button>
      </form>
        
      </div>
       <c:choose>
      <c:when test="${changePw == 1}">
      <h1>비밀번호가 성공적으로 변경되었습니다람쥐</h1>
      </c:when>
      <c:when test="${changePw == 0}">
      <h2>비밀번호를 찾을 수 없습니다</h2>
      </c:when>
      </c:choose>
      </div>
   </div>
          
         <!-- /panels -->
      </div>
      <!-- /tabset -->
   </div>


</body>
</html>