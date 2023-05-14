/**
 * 
 */
 
$(function(){

$("#cardhyun2").hover(function(){
$("#cardhyun1").hide();
$(".cardhyun").show();
},function(){
$("#cardhyun1").show();
$(".cardhyun").css("display" , "none");
});

$("#cardlot2").hover(function(){
$("#cardlot1").hide();
$(".cardlot").show();
},function(){
$("#cardlot1").show();
$(".cardlot").css("display" , "none");
});

$("#cardkuk2").hover(function(){
$("#cardkuk1").hide();
$(".cardkuk").show();
},function(){
$("#cardkuk1").show();
$(".cardkuk").css("display" , "none");
});

$("#cardsin2").hover(function(){
$("#cardsin1").hide();
$(".cardsin").show();
},function(){
$("#cardsin1").show();
$(".cardsin").css("display" , "none");
});


$("#logout").click(function(){
location.href = "logout.do";

});

haha();

function haha(){

$.ajax({
url : "customerList.do",
type : "get",
dataType : "json",
success : kaka,
error : function(result){
alert('zz');
}


});

}

function kaka(result) {
 var customerList = $('#datatablesSimple tbody');
        customerList.empty();
        for(row of result){
              var tr = $('<tr/>');
              var member_Id = $('<td/>').text( row['member_Id'] );
              var member_Name = $('<td/>').text( row['member_Name'] );
              var member_Tel = $('<td/>').text( row['member_Tel'] );
              var member_BirthDate = $('<td/>').text( row['member_BirthDate'] );
              var member_Grade = $('<td/>').text( row['member_Grade'] );
              
              tr.append(member_Id);
              tr.append(member_Name);
              tr.append(member_Tel);
              tr.append(member_BirthDate);
              tr.append(member_Grade);
              
              customerList.append(tr);
              }
}



});