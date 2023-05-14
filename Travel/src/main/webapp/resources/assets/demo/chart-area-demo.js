// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

$(function(){ 

	 getGraphMonth(); 

// Area Chart Example 
 
function getGraphMonth(){
 $.ajax({
 
 	type:"get",
 	url:'api/manager/product-total',
 	contentType:'application/json;charset=utf-8',
 	dataType: 'json',
 	success : function(data){
 	
 		console.log(data);

 	new Chart(document.getElementById("myAreaChart_1"),{
 		type: 'line',
		  data: {
		    labels:[
		    		'1월', '2월', '3월', '4월', '5월', '6월',
		    		 '7월', '8월', '9월', '10월', '11월', '12월'
		    	],
		    datasets: [{
		      data: [
		      	data.jan, data.feb, data.mar, data.april, data.may, data.june,
		      	data.july, data.aug, data.sep, data.oct, data.nov, data.dec
		      ],
		      label: "get",
		      lineTension: 0.3,
		      backgroundColor: "rgba(2,117,216,0.2)",
		      borderColor: "rgba(2,117,216,1)",
		      pointRadius: 5,
		      pointBackgroundColor: "rgba(2,117,216,1)",
		      pointBorderColor: "rgba(255,255,255,0.8)",
		      pointHoverRadius: 5,
		      pointHoverBackgroundColor: "rgba(2,117,216,1)",
		      pointHitRadius: 50,
		      pointBorderWidth: 2, 
		    }],
		  },
		  options: {
		    scales: {
		      xAxes: [{
		        time: {
		          unit: 'date'
		        },
		        gridLines: {
		          display: false
		        },
		        ticks: {
		          maxTicksLimit: 7
		        }
		      }],
		      yAxes: [{
		        ticks: {
		          // min: 0,
		          // max: 40000,
		          maxTicksLimit: 5
		        },
		        gridLines: {
		          color: "rgba(0, 0, 0, .125)",
		        }
		      }],
		    },
		    legend: {
		      display: false
		    }
	    }
	})// 그래프 
 	
 	}, // end of success
  	error: function(err){
  		console.log(err);
  	}
 
 
 })// end of ajax
 
 
 


}// getGraph

}); // end of jquery
 
 
$(function(){

	getGraphSeason();


function getGraphSeason(){
 $.ajax({
 
 	type:"get",
 	url:'api/manager/product-totalSeason',
 	contentType:'application/json;charset=utf-8',
 	dataType: 'json',
 	success : function(data){
 	
 		console.log(data);

 	new Chart(document.getElementById("myAreaChart_2"),{
 		type: 'line',
		  data: {
		    labels:[
		    		'1분기', '2분기', '3분기', '4분기'   		  
		    	],
		    datasets: [{
		      data: [
		      	 data.quarterOne, data.quarterTwo, data.quarterThree, data.quarterFour
		      ],
		      label: "get",
		      lineTension: 0.3,
		      backgroundColor: "rgba(2,117,216,0.2)",
		      borderColor: "rgba(2,117,216,1)",
		      pointRadius: 5,
		      pointBackgroundColor: "rgba(2,117,216,1)",
		      pointBorderColor: "rgba(255,255,255,0.8)",
		      pointHoverRadius: 5,
		      pointHoverBackgroundColor: "rgba(2,117,216,1)",
		      pointHitRadius: 50,
		      pointBorderWidth: 2, 
		    }],
		  },
		  options: {
		    scales: {
		      xAxes: [{
		        time: {
		          unit: 'date'
		        },
		        gridLines: {
		          display: false
		        },
		        ticks: {
		          maxTicksLimit: 7
		        }
		      }],
		      yAxes: [{
		        ticks: {
		          // min: 0,
		          // max: 40000,
		          maxTicksLimit: 5
		        },
		        gridLines: {
		          color: "rgba(0, 0, 0, .125)",
		        }
		      }],
		    },
		    legend: {
		      display: false
		    }
	    }
	})// 그래프 
 	
 	}, // end of success
  	error: function(err){
  		console.log(err);
  	}
 
 
 })// end of ajax
  

}// getGraph


});
 
