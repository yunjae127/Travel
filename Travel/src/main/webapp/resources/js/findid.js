
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
		
		lastAnchor.removeClass('on');
		currentAnchor.addClass('on');
		
		lastPanel.hide();
		currentPanel.show();
		
		lastAnchor = currentAnchor;
		lastPanel = currentPanel;
	});
	
	
});