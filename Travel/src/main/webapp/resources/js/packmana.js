$(function(){

let title        = $("#title");
let info        = $("#info");
let cost        = $("#cost");
let dis        = $("#dis");
let file       = $("#file");

$('#btn605').click(function(){
   
   var listTable = $('#listTable')
   
   
   let tr = $('<tr/>');
   let td1 = $('<td/>');
   let td2 = $('<td/>');
   let td3 = $('<td/>');
   let td4 = $('<td/>');
   let td5 = $('<td/>');
   
   td1.text(title.val());
   tr.append(td1);
   td2.text(info.val());
   tr.append(td2);
   td3.text(cost.val());
   tr.append(td3);
   td4.text(dis.val());
   tr.append(td4); 
   td5.text(file.val());
   tr.append(td5);
   tr.append('<td><input type="button" class="delete" value="삭제"></td>');
   listTable.append(tr);
   
   
   
   
   $('#listTable').on('click','.delete',function(){
      $(this).parent().parent().remove();
      }); 
      
});     

});




$(function(){

	let title2        = $("#title2");
	let info2        = $("#info2");
	let cost2        = $("#cost2");
	let dis2        = $("#dis2");
    let file2       = $("#file2");

	$('#btn6052').click(function(){
	   
	   var listTable2 = $('#listTable2')
	   
	   
	   let tr = $('<tr/>');
	   let td1 = $('<td/>');
	   let td2 = $('<td/>');
	   let td3 = $('<td/>');
	   let td4 = $('<td/>');
	   let td5 = $('<td/>');
 
	   
	   td1.text(title2.val());
	   tr.append(td1);
	   td2.text(info2.val());
	   tr.append(td2);
	   td3.text(cost2.val());
	   tr.append(td3);
	   td4.text(dis2.val());
	   tr.append(td4); 
	   td5.text(file2.val());
       tr.append(td5);
	   tr.append('<td><input type="button" class="delete" value="삭제"></td>');
	   listTable2.append(tr);
	   
	   
	   
	   
	   $('#listTable2').on('click','.delete',function(){
	      $(this).parent().parent().remove();
	      }); 
	      
	});     

	});





$(function(){

	 let title3        = $("#title3");
	 let info3        = $("#info3");
	 let cost3        = $("#cost3");
	 let dis3       = $("#dis3");
	 let file3       = $("#file3");
	 let count3 =$("#count3");

	 $('#btn6053').click(function(){
	
	 var listTable3 = $('#listTable3')
	
	
	 let tr = $('<tr/>');
	 let td1 = $('<td/>');
	 let td2 = $('<td/>');
	 let td3 = $('<td/>');
	 let td4 = $('<td/>');
	 let td5 = $('<td/>'); 
	 let td6 = $('<td/>');

	
	 td1.text(title3.val());
	 tr.append(td1);
	 td2.text(info3.val());
	 tr.append(td2);
	 td3.text(cost3.val());
	 tr.append(td3);
	 td4.text(dis3.val());
	 tr.append(td4);
	 td5.text(file3.val());
     tr.append(td5);
	 td6.text(count3.val());
	 tr.append(td6); 
	 tr.append('<td><input type="button" class="delete" value="삭제"></td>');
	 listTable3.append(tr);
	
	
	
	
	 $('#listTable3').on('click','.delete',function(){
	 $(this).parent().parent().remove();
	 }); 
	
	 });     

	 }); 
	 
	 
	 
	 $(function(){

	 let title4        = $("#title4");
	 let info4        = $("#info4");
	 let cost4        = $("#cost4");
	 let dis4       = $("#dis4");
	 let file4       = $("#file4");
	 let count4 =$("#count4");

	 $('#btn6054').click(function(){
	
	 var listTable4 = $('#listTable4')
	
	
	 let tr = $('<tr/>');
	 let td1 = $('<td/>');
	 let td2 = $('<td/>');
	 let td3 = $('<td/>');
	 let td4 = $('<td/>');
	 let td5 = $('<td/>'); 
	 let td6 = $('<td/>'); 

	
	 td1.text(title4.val());
	 tr.append(td1);
	 td2.text(info4.val());
	 tr.append(td2);
	 td3.text(cost4.val());
	 tr.append(td3);
	 td4.text(dis4.val());
	 tr.append(td4);
	 td5.text(file4.val());
     tr.append(td5);
	 td6.text(count4.val());
	 tr.append(td6); 
	 tr.append('<td><input type="button" class="delete" value="삭제"></td>');
	 listTable4.append(tr);
	
	
	
	
	 $('#listTable4').on('click','.delete',function(){
	 $(this).parent().parent().remove();
	 }); 
	
	 });     

	 }); 
	 
	 
	 // 호텔정보 > 파일선택 > 입력 클릭시
	 $(function(){

	 let title5        = $("#title5");
	 let info5       = $("#info5");
	 let loca5        = $("#loca5");
	 let file5       = $("#file5");
	 
	 $('#btn6055').click(function(){
	
	 var listTable5 = $('#listTable5')
	
	
	 let tr = $('<tr/>');
	 let td1 = $('<td/>');
	 let td2 = $('<td/>');
	 let td3 = $('<td/>');
	 let td4 = $('<td/>');

	
	 td1.text(title5.val());
	 tr.append(td1);
	 td2.text(info5.val());
	 tr.append(td2);
	 td3.text(loca5.val());
	 tr.append(td3);
	 td4.text(file5.val());
	 tr.append(td4);
	 tr.append('<td><input type="button" class="delete" value="삭제"></td>');
	 listTable5.append(tr);
	
	
	
	
	 $('#listTable5').on('click','.delete',function(){
	 $(this).parent().parent().remove();
	 }); 
	
	 });     

	 }); 
	 
	 
	 