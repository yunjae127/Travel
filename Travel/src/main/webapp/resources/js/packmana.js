 
$(function(){

 $('#btn605').click(function(){
   let form = $('#productfrm')[0]
   let formData = new FormData(form);

   $.ajax({
         type:'post',
         data : formData,
         url:'./saveProductLis/new',
        contentType: false,
        processData: false,
        //cache : false,
         enctype : 'multipart/form-data',
         success:function(resultData){
         ProductList();
         },
         error:function(err){
         alert('error!')
         console.log(err);
         }
 
   })//end of saveProductLis ajax
   
   
   
   
   function ProductList(){
      
      
      $.ajax ({
      type:'get',
      url:'./saveProductLis',
      dataType : 'json',
      success : function(result){
    makeList(result);},
      error : function(err){
      alert('error');
      console.log(err);
      }
      })//end of makeList ajax
      
      
      function makeList(result){
      alert(result)
      let listTable = $('#listTable')
      listTable.empty();
      for(row of result){
      let tr = $('<tr/>');
      let product_Name = $('<td bgcolor="white" width="150" style="border: 1px solid gray;"/>').text(row['product_Name']);
      let product_Content = $('<td bgcolor="white" width="350" style="border: 1px solid gray;"/>').text(row['product_Content']);
      let product_Place = $('<td bgcolor="white" width="200" style="border: 1px solid gray;"/>').text(row['product_Place']);
      let product_Price = $('<td bgcolor="white" width="100" style="border: 1px solid gray;"/>').text(row['product_Price']);
      let product_Count = $('<td bgcolor="white" width="100" style="border: 1px solid gray;"/>').text(row['product_Count']);
      let product_Depature = $('<td bgcolor="white" width="150" style="border: 1px solid gray;"/>').text(row['product_Depature']);
      let product_Array = $('<td bgcolor="white" width="150" style="border: 1px solid gray;"/>').text(row['product_Array']);
      let product_AirLine = $('<td  bgcolor="white" width="150" style="border: 1px solid gray;"/>').text(row['product_AirLine']);
      let image_Name = $('<td bgcolor="white" width="200" style="border: 1px solid gray;" />').text(row['image_Name']);
      tr.append("<input type='hidden' name='product_Id' id='product_Id'/>").val(row['product_Id'])
      tr.append(product_Name);
      tr.append(product_Content);
      tr.append(product_Place);
      tr.append(product_Price);
      tr.append(product_Count);
      tr.append(product_Depature);
      tr.append(product_Array);
      tr.append(product_AirLine);
      tr.append(image_Name);
   tr.append('<td bgcolor="white" width="50" style="border: 1px solid gray;"><button class="delete">삭제</button></td>');
   listTable.append(tr)
      
      }//end of for of result
      
      }//end of makeList()
      
      $('#listTable').on('click','button',function(){
      let btn = $(this);
      let rno = btn.parents('tr').children().eq(0).text();
      //alert(rno);
      if(btn.text().trim() =='삭제'){
         //삭제 버튼일 경우
         replyDelete(rno);
      }
      })
      
      
         function replyDelete(rno){
         $.ajax({
               type:'delete',
               url:'../saveProductLis/' + rno,
               success:function(result){
         
               replyList();
               },//function result
               error:function(err){
               alert('error');
               console.log(err);
               }//function error
   })
   
   }
      
   }//end of productList 

      
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
	  
 
	 
	 
	 $(function(){
	 
	 	// 입력 버튼이 눌려졌을 때
$('#btn6055').click(function(){
 	  
	let form = $('#frm')[0]
    let formData = new FormData(form);  
	// 전송방식
	$.ajax({
	 
	type : 'post',
	data : 	formData,
 	url  : './hotelsaveBoard/new',
 	contentType: false,
    processData: false,
 	   enctype : 'multipart/form-data', 
	success  : function(result){   
		alert(result);
		$("#title5").val("");
		$("#info5").val("");
		$("#loca5").val("");
		$("#Lat").val("");
		$("#Lng").val("");
		$("#file5").val("");
		// 호텔목록 출력 
		hotelList();
	},
	error : function(err){
		alert('error');
		console.log(err);
	
		}  
		});// end of ajax
	
	}); // end of click  
	
	hotelList();
	
	function hotelList(){
	
		$.ajax({
			
				type : 'get', 
				dataType : 'json',
				// 컨트롤러와 같은 이름
				url  : './hotelsaveBoard',
				success :  function(result){
				
				makeList(result);
				},
				error: function(err){
				alert('error');
				console.log(err);
				}
		 
		});
	
	
	}//end of hotelList  
	
	 	function makeList(result){ 
	
		var hotelList = $('#hotelList'); 
		
		hotelList.empty();
		for( row of result)
		{ 
		
		var tr = $('<tr/>');
			
	   var hotel_Name = $('<td bgcolor="white"  style="border: 1px solid gray; width : 250px;"/>').text(row['hotel_Name']);
	   var hotel_Address = $('<td bgcolor="white"  style="border: 1px solid gray; width:250px;"/>').text(row['hotel_Address']);
       var hotel_Content = $('<td bgcolor="white"  style="border: 1px solid gray; width:550px;"/>').text(row['hotel_Content']); 
       var hotel_Lat = $('<td bgcolor="white"  style="border: 1px solid gray; width:200px;"/>').text(row['hotel_Lat']);
       var hotel_Lng = $('<td bgcolor="white" style="border: 1px solid gray; width:200px;"/>').text(row['hotel_Lng']);
		 	 
			tr.append(hotel_Name); 
			tr.append(hotel_Address); 
			tr.append(hotel_Content);   
			tr.append(hotel_Lat); 
			tr.append(hotel_Lng); 
					
			   tr.append('<td bgcolor="white"  style="border: 1px solid gray; width:55px;"><button class="delete">삭제</button></td>');
			 
			hotelList.append(tr);
		}

	}// end of makeList 
	 
	// 동적으로 생성한 수정버튼과 삭제버튼 클릭시 
 	$('#hotelList').on('click','button',function(){
 	
 		var btn=$(this);
 		//버튼의 부모 td 의 tr 의 자식 0번째
 		var hotel_Name= btn.parents('tr').children().eq(0).text();
 		//alert(hotel_Name);  -> 잘나옴
 		 
 		if(btn.text().trim() == '삭제'){
 			//'삭제' 버튼인 경우
 			hotelDelete(hotel_Name); 
 		} 
 	});// end of on click
	 
	  
	 
	 	function hotelDelete(hotel_Name){
 	
	   $.ajax({
          type     : 'delete'     
         ,url      : './hotelsaveBoard/' + hotel_Name
         ,success : function(result){
                 hotelList();
                  
                  } // end of success
         ,error    : function(err){
                  alert('error');
                  console.log(err);
                  
                  } // end of error
               
      }); // end of $.ajax
 
 	} 
	 
	 
	 });// end of jquery