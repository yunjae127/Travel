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

$(".deleteMember").click(function(){
var member_Id = $(this).attr("id");
location.href = "memberdelete.do?member_Id="+member_Id;
});

$("#logout").click(function(){
location.href = "logout.do";

});

});