function plot_strat_chart(columns, rows) {
	// columns is an array of arrays for 		  data1.addColumn('string', 'Aspect');
		  										// data1.addColumn('number', 'Rating');
	// rows is an array of arrys for 	  			  data1.addRows([
		  										//  ['Strategy', 7.2],
		   										// ['Execution', 5.5],									
	// Load the AJAX API
	$.getScript("https://www.google.com/jsapi", function(){



		// Load the Visualization API and the piechart package.
		google.load('visualization', '1.0', {'packages':['corechart']});

		// Set a callback to run when the Google Visualization API is loaded.
		google.setOnLoadCallback(drawChart);

		// Callback that creates and populates a data table,
		// instantiates the chart, passes in the data and
		// draws it.
		function drawChart() {

		  // Create the data table.
		  var data1 = new google.visualization.DataTable();
		  data1.addColumn('string', 'Aspect');
		  data1.addColumn('number', 'Rating');
		  data1.addRows([
		    ['Strategy', 7.2],
		    ['Execution', 5.5],

		  ]);

		  // Set chart options  <
		  var options = {'title':'Factory cost reduction',
		                 width:450,
		                 height:180,
		                 vAxis: { textStyle:{fontSize:15}},
		                 legend: { position:'none' },
						 titleTextStyle:{fontSize:20},
						 

						 hAxis: { ticks: [6,7] },
		                 hAxis: { minValue: 0 }, 

		                 hAxis: { titleTextStyle:{fontSize:25}}

		                 };

		  // Instantiate and draw our chart, passing in some options.
		  var chart1 = new google.visualization.BarChart(document.getElementById('chart1_div'));
		  chart1.draw(data1, options);
		}

	});
}
// this line needs to go elsewhere.  it's html not js  <div id="chart1_div"></div>




