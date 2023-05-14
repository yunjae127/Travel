$(function(){
   
   var topDiv = $('.tabSet');
   var anchors = topDiv.find('ul.tabs a');
   var panelDivs = topDiv.find('div.panel');
   
   anchors.show();
   panelDivs.hide();
   
   var lastAnchor = anchors.filter('.on');
   var lastPanel = $(lastAnchor.attr('href')); // $('#panel1-1')
   lastPanel.show();
   
   anchors.click(function(evt){
      evt.preventDefault();
      
      var currentAnchor = $(this);
      var currentPanel = $(currentAnchor.attr('href'));
      
      //lastAnchor.removeClass('on');
      anchors.removeClass('on');
      currentAnchor.addClass('on');
      
      //lastPanel.hide();
      panelDivs.hide();
      currentPanel.show();
      
      lastAnchor = currentAnchor;
      lastPanel = currentPanel;
   });
 
 
$(".deleteMember").click(function(){
var member_Id = $(this).attr("id");
location.href = "memberdelete.do?member_Id="+member_Id;
});  
   
});