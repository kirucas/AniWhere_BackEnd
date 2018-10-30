//////////////////////////////메인 방문자수 통계/////////////////////////////////////////
google.charts.load('current', {
  'packages': ['bar']
});
google.charts.setOnLoadCallback(drawVisitor);

function drawVisitor() {
  var data = new google.visualization.arrayToDataTable([
    ['', '명'],
    ['1월', 44],
    ['2월', 44],
    ['3월', 44],
    ['4월', 44],
    ['5월', 44],
    ['6월', 44],
    ['7월', 31],
    ['8월', 50],
    ['9월', 41],
    ['10월', 5],
    ['11월', 4],
    ['12월', 44],
    
  ]);

  var options = {
    title: '방문자 통계',
    legend: {
      position: 'none'
    },
    colors: ['#1ABC9C'],

    chartArea: {
      width: 401
    },
    hAxis: {
      ticks: [-1, -0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75, 1]
    },
    bar: {
      gap: 0
    },

    histogram: {
      bucketSize: 0.02,
      maxNumBuckets: 200,
      minValue: -1,
      maxValue: 1
    }
  };

  var chart = new google.charts.Bar(document.getElementById('visitor-chart'));
  chart.draw(data, options);
  
  //반응형 적용
  window.addEventListener('resize', function() { chart.draw(data, options); }, false);

};

//////////////////////////////////////////////////////////////////////////////////

////////////////////////////// 회원 가입 통계/////////////////////////////////////////
(function($) {
google.charts.load('current', {
  'packages': ['bar']
});
google.charts.setOnLoadCallback(drawMember);

function drawMember() {
  var data = new google.visualization.arrayToDataTable([
    ['회원가입 통계', '명'],
    ['1월', 44],
    ['2월', 44],
    ['3월', 44],
    ['4월', 44],
    ['5월', 44],
    ['6월', 44],
    ['7월', 31],
    ['8월', 50],
    ['9월', 41],
    ['10월', 5],
    ['11월', 44],
    ['12월', 44],
    
  ]);

  var options = {
    title: '회원수 통계',
    legend: {
      position: 'none'
    },
    colors: ['#10E3F3'],

    chartArea: {
      width: 401
    },
    hAxis: {
      ticks: [-1, -0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75, 1]
    },
    bar: {
      gap: 0
    },

    histogram: {
      bucketSize: 0.02,
      maxNumBuckets: 200,
      minValue: -1,
      maxValue: 1
    }
  };

  var chart = new google.charts.Bar(document.getElementById('member-chart'));
  chart.draw(data, options);
  //반응형 적용
  window.addEventListener('resize', function() { chart.draw(data, options); }, false);
};

})(jQuery);
///////////////////////////////// 회원 가입 통계 끝////////////////////////////////////////



///////////////////////////////// 동물 별 통계 //////////////////////////////////////////

google.charts.load("current", {
  packages: ["corechart"]
});
google.charts.setOnLoadCallback(drawAnimal);

function drawAnimal() {
  var data = google.visualization.arrayToDataTable([
    ['Task', 'Hours per Day'],
    ['강아지', 400],
    ['고양이', 300],
    ['파충류&양서류', 99],
    ['조류', 154],
    ['기타 포유류', 149]
  ]);

  var options = {
    title: '동물 종류별 게시물 통계',
    pieHole: 0.4,
    colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66','#ff0000'],
    chartArea: {
      width: 500
    },
  };

  var Donutchart = new google.visualization.PieChart(document.getElementById('animal-chart'));
  Donutchart.draw(data, options);
  //반응형 적용
  //window.addEventListener('resize', function() { chart.draw(data, options); }, false);
  $(window).resize(function(){ 
	  drawAnimal(); 
	     }); 
}

//////////////////////////////// 동물 별 통계 끝 ////////////////////////////////////////////////




///////////////////////////////////전체 게시글 통계 //////////////////////////////////////////////
google.charts.load('current', {
	  'packages': ['bar']
	});
	google.charts.setOnLoadCallback(drawBoard);

	function drawBoard() {
	  var data = new google.visualization.arrayToDataTable([
	    ['전체 게시글 통계', '명'],
	    ["6월", 440],
	    ["7월", 310],
	    ["8월", 500],
	    ["9월", 410],
	    ['10월', 30]
	  ]);

	  var options = {
	    title: '전체 게시글 통계',
	    legend: {
	      position: 'none'
	    },
	    colors: ['#76C1FA'],

	    chartArea: {
	      width: 401
	    },
	    hAxis: {
	      ticks: [-1, -0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75, 1]
	    },
	    bar: {
	      gap: 0
	    },

	    histogram: {
	      bucketSize: 0.02,
	      maxNumBuckets: 200,
	      minValue: -1,
	      maxValue: 1
	    }
	  };

	  var chart = new google.charts.Bar(document.getElementById('board-chart'));
	  chart.draw(data, options);
	  //반응형 적용
	  window.addEventListener('resize', function() { chart.draw(data, options); }, false);
	};


///////////////////////////////////전체 게시글 통계 끝 /////////////////////////////////////////////

///////////////////////////////// 메이팅 통계 /////////////////////////////////////////////////
	(function($) {

		  google.charts.load('current', {
		    'packages': ['corechart']
		  });
		  google.charts.setOnLoadCallback(drawMating);

		  function drawMating() {
		    var data = google.visualization.arrayToDataTable([
		      ['Month', '시도', '성사'],
		      ['1월', 50, 26],
		      ['2월', 19, 5],
		      ['3월', 40, 30],
		      ['4월', 200, 170],
		      ['5월', 103, 54],
		      ['6월', 103, 50],
		      ['7월', 103, 54],
		      ['8월', 103, 50],
		      ['9월', 103, 54],
		      ['10월', 103, 50],
		      ['11월', 103, 54],
		      ['12월', 103, 50]
		    ]);

		    var options = {
		      title: '만나요 통계',
		      curveType: 'function',
		      legend: {
		        position: 'bottom'
		      },
		      colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66'],
		      chartArea: {
		        width: 500
		      },
		    };

		    var chart = new google.visualization.LineChart(document.getElementById('mating-chart'));

		    chart.draw(data, options);
		    //반응형 적용
		    window.addEventListener('resize', function() { chart.draw(data, options); }, false);
		  }

})(jQuery);
//////////////////////////////// 메이팅 통계 끝 ////////////////////////////////////////////////

	
	
	
//////////////////////////////// 유기 동물 통계 ////////////////////////////////////////////////
	(function($) {

		  google.charts.load('current', {
		    'packages': ['corechart']
		  });
		  google.charts.setOnLoadCallback(drawMiss);

		  function drawMiss() {
		    var data = google.visualization.arrayToDataTable([
		      ['Month', '공고', '입양'],
		      ['1월', 50, 26],
		      ['2월', 19, 5],
		      ['3월', 40, 30],
		      ['4월', 200, 170],
		      ['5월', 103, 54],
		      ['6월', 103, 50],
		      ['7월', 103, 54],
		      ['8월', 103, 50],
		      ['9월', 103, 54],
		      ['10월', 103, 50],
		      ['11월', 103, 54],
		      ['12월', 103, 50]
		    ]);

		    var options = {
		      title: '유기동물 통계',
		      curveType: 'function',
		      legend: {
		        position: 'bottom'
		      },
		      colors: ['#76C1FA', '#FF0000', '#F36368', '#FABA66'],
		      chartArea: {
		        width: 500
		      },
		    };

		    var chart = new google.visualization.LineChart(document.getElementById('miss-chart'));

		    chart.draw(data, options);
		    //반응형 적용
		    window.addEventListener('resize', function() { chart.draw(data, options); }, false);
		  }

})(jQuery);


////////////////////////////////유기 동물 통계 끝 ////////////////////////////////////////////////

	
/////////////////////////////////예약 통계 //////////////////////////////////////////////////////
	google.charts.load('current', {
		  'packages': ['bar']
		});
		google.charts.setOnLoadCallback(drawReservation);

		function drawReservation() {
		  var data = new google.visualization.arrayToDataTable([
		    ['전체 예약 통계', '횟수'],
		    ['1월', 440],
		    ['2월', 440],
		    ['3월', 440],
		    ['4월', 440],
		    ['5월', 440],
		    ['6월', 440],
		    ['7월', 310],
		    ['8월', 500],
		    ['9월', 410],
		    ['10월', 30],
		    ['11월', 440],
		    ['12월', 440]
		  ]);

		  var options = {
		    title: '전체 예약 통계',
		    legend: {
		      position: 'none'
		    },
		    colors: ['#00FF00'],

		    chartArea: {
		      width: 401
		    },
		    hAxis: {
		      ticks: [-1, -0.75, -0.5, -0.25, 0, 0.25, 0.5, 0.75, 1]
		    },
		    bar: {
		      gap: 0
		    },

		    histogram: {
		      bucketSize: 0.02,
		      maxNumBuckets: 200,
		      minValue: -1,
		      maxValue: 1
		    }
		  };

		  var chart = new google.charts.Bar(document.getElementById('reservation-chart'));
		  chart.draw(data, options);
		  //반응형 적용
		  window.addEventListener('resize', function() { chart.draw(data, options); }, false);
		};
/////////////////////////////////예약 통계 끝 //////////////////////////////////////////////////////	

		
		
/////////////////////////////////강아지 통계 시작///////////////////////////////////////////////////
	//강아지 게시글 통계
	
		(function($) {

			  google.charts.load('current', {
			    'packages': ['corechart']
			  });
			  google.charts.setOnLoadCallback(drawDogBoard);

			  function drawDogBoard() {
			    var data = google.visualization.arrayToDataTable([
			      ['Month', '글'],
			      ['1월', 50],
			      ['2월', 19],
			      ['3월', 40],
			      ['4월', 20],
			      ['5월', 103],
			      ['6월', 103],
			      ['7월', 103],
			      ['8월', 103],
			      ['9월', 103],
			      ['10월', 105],
			      ['11월', 10],
			      ['12월', 105]
			    ]);

			    var options = {
			      title: '강아지 게시글 통계',
			      curveType: 'function',
			      legend: {
			        position: 'bottom'
			      },
			      colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66'],
			      chartArea: {
			        width: 500
			      },
			    };

			    var chart = new google.visualization.LineChart(document.getElementById('dog-board-chart'));

			    chart.draw(data, options);
			    //반응형 적용
			    window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  }

	})(jQuery);
	////////////////////////////강아지 게시글 통계 끝/////////////////////////////////////////////
	
	////////////////////////////강아지 게시판별 게시글 통계 ////////////////////////////////////////
		google.charts.load("current", {
			  packages: ["corechart"]
			});
			google.charts.setOnLoadCallback(drawDogAll);

			function drawDogAll() {
			  var data = google.visualization.arrayToDataTable([
			    ['Task', 'Hours per Day'],
			    ['사진', 400],
			    ['동영상', 300],
			    ['질문', 99],
			    ['팁', 154],
			  ]);

			  var options = {
			    title: '강아지 게시판별 게시물 통계',
			    pieHole: 0.4,
			    colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66','#ff0000'],
			    chartArea: {
			      width: 500
			    },
			  };

			  var Donutchart = new google.visualization.PieChart(document.getElementById('dog-all-chart'));
			  Donutchart.draw(data, options);
			  //반응형 적용
			  //window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  $(window).resize(function(){ 
				  drawDogAll(); 
				     }); 
			}
		////////////////////////////강아지 게시판별 게시글 통계 끝////////////////////////////////////////

/////////////////////////////////강아지 통계 끝///////////////////////////////////////////////////

		
		
		
/////////////////////////////////고양이 통계 시작///////////////////////////////////////////////////
		(function($) {

			  google.charts.load('current', {
			    'packages': ['corechart']
			  });
			  google.charts.setOnLoadCallback(drawCatBoard);

			  function drawCatBoard() {
			    var data = google.visualization.arrayToDataTable([
			      ['Month', '글'],
			      ['1월', 50],
			      ['2월', 19],
			      ['3월', 40],
			      ['4월', 20],
			      ['5월', 103],
			      ['6월', 103],
			      ['7월', 103],
			      ['8월', 103],
			      ['9월', 103],
			      ['10월', 105],
			      ['11월', 10],
			      ['12월', 105]
			    ]);

			    var options = {
			      title: '고양이 게시글 통계',
			      curveType: 'function',
			      legend: {
			        position: 'bottom'
			      },
			      colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66'],
			      chartArea: {
			        width: 500
			      },
			    };

			    var chart = new google.visualization.LineChart(document.getElementById('cat-board-chart'));

			    chart.draw(data, options);
			    //반응형 적용
			    window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  }

	})(jQuery);
		
////////////////////////////고양이 게시판별 게시글 통계 ////////////////////////////////////////
		google.charts.load("current", {
			  packages: ["corechart"]
			});
			google.charts.setOnLoadCallback(drawCatAll);

			function drawCatAll() {
			  var data = google.visualization.arrayToDataTable([
			    ['Task', 'Hours per Day'],
			    ['사진', 400],
			    ['동영상', 300],
			    ['질문', 99],
			    ['팁', 154],
			  ]);

			  var options = {
			    title: '고양이 게시판별 게시물 통계',
			    pieHole: 0.4,
			    colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66','#ff0000'],
			    chartArea: {
			      width: 500
			    },
			  };

			  var Donutchart = new google.visualization.PieChart(document.getElementById('cat-all-chart'));
			  Donutchart.draw(data, options);
			  //반응형 적용
			  //window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  $(window).resize(function(){ 
				  drawCatAll(); 
				     }); 
			}
		////////////////////////////고양이 게시판별 게시글 통계 끝////////////////////////////////////////

/////////////////////////////////고양이 통계 끝///////////////////////////////////////////////////

		
		
		
/////////////////////////////////파충류&양서류 통계 시작///////////////////////////////////////////////////
		(function($) {

			  google.charts.load('current', {
			    'packages': ['corechart']
			  });
			  google.charts.setOnLoadCallback(drawRnaBoard);

			  function drawRnaBoard() {
			    var data = google.visualization.arrayToDataTable([
			      ['Month', '글'],
			      ['1월', 50],
			      ['2월', 19],
			      ['3월', 40],
			      ['4월', 20],
			      ['5월', 103],
			      ['6월', 103],
			      ['7월', 103],
			      ['8월', 103],
			      ['9월', 103],
			      ['10월', 105],
			      ['11월', 10],
			      ['12월', 105]
			    ]);

			    var options = {
			      title: '파충류&양서류 게시글 통계',
			      curveType: 'function',
			      legend: {
			        position: 'bottom'
			      },
			      colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66'],
			      chartArea: {
			        width: 500
			      },
			    };

			    var chart = new google.visualization.LineChart(document.getElementById('rna-board-chart'));

			    chart.draw(data, options);
			    //반응형 적용
			    window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  }

	})(jQuery);
		
////////////////////////////파양 게시판별 게시글 통계 ////////////////////////////////////////
		google.charts.load("current", {
			  packages: ["corechart"]
			});
			google.charts.setOnLoadCallback(drawRnaAll);

			function drawRnaAll() {
			  var data = google.visualization.arrayToDataTable([
			    ['Task', 'Hours per Day'],
			    ['사진', 400],
			    ['동영상', 300],
			    ['질문', 99],
			    ['팁', 154],
			  ]);

			  var options = {
			    title: '파충류&양서류 게시판별 게시물 통계',
			    pieHole: 0.4,
			    colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66','#ff0000'],
			    chartArea: {
			      width: 500
			    },
			  };

			  var Donutchart = new google.visualization.PieChart(document.getElementById('rna-all-chart'));
			  Donutchart.draw(data, options);
			  //반응형 적용
			  //window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  $(window).resize(function(){ 
				  drawRnaAll(); 
				     }); 
			}
		////////////////////////////v파양 게시판별 게시글 통계 끝////////////////////////////////////////

/////////////////////////////////파충류&양서류 통계 끝///////////////////////////////////////////////////

		
		
		
		
/////////////////////////////////조류 통계 시작///////////////////////////////////////////////////
		(function($) {

			  google.charts.load('current', {
			    'packages': ['corechart']
			  });
			  google.charts.setOnLoadCallback(drawBirdBoard);

			  function drawBirdBoard() {
			    var data = google.visualization.arrayToDataTable([
			      ['Month', '글'],
			      ['1월', 50],
			      ['2월', 19],
			      ['3월', 40],
			      ['4월', 20],
			      ['5월', 103],
			      ['6월', 103],
			      ['7월', 103],
			      ['8월', 103],
			      ['9월', 103],
			      ['10월', 105],
			      ['11월', 10],
			      ['12월', 105]
			    ]);

			    var options = {
			      title: '조류 게시글 통계',
			      curveType: 'function',
			      legend: {
			        position: 'bottom'
			      },
			      colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66'],
			      chartArea: {
			        width: 500
			      },
			    };

			    var chart = new google.visualization.LineChart(document.getElementById('bird-board-chart'));

			    chart.draw(data, options);
			    //반응형 적용
			    window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  }

	})(jQuery);
		
////////////////////////////조류 게시판별 게시글 통계 ////////////////////////////////////////
		google.charts.load("current", {
			  packages: ["corechart"]
			});
			google.charts.setOnLoadCallback(drawBirdAll);

			function drawBirdAll() {
			  var data = google.visualization.arrayToDataTable([
			    ['Task', 'Hours per Day'],
			    ['사진', 400],
			    ['동영상', 300],
			    ['질문', 99],
			    ['팁', 154],
			  ]);

			  var options = {
			    title: '조류 게시판별 게시물 통계',
			    pieHole: 0.4,
			    colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66','#ff0000'],
			    chartArea: {
			      width: 500
			    },
			  };

			  var Donutchart = new google.visualization.PieChart(document.getElementById('bird-all-chart'));
			  Donutchart.draw(data, options);
			  //반응형 적용
			  //window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  $(window).resize(function(){ 
				  drawBirdAll(); 
				     }); 
			}
		////////////////////////////조류 게시판별 게시글 통계 끝////////////////////////////////////////

/////////////////////////////////조류 통계 끝///////////////////////////////////////////////////

		
		
		
/////////////////////////////////기타 포유류 통계 시작///////////////////////////////////////////////////
		(function($) {

			  google.charts.load('current', {
			    'packages': ['corechart']
			  });
			  google.charts.setOnLoadCallback(drawEtcBoard);

			  function drawEtcBoard() {
			    var data = google.visualization.arrayToDataTable([
			      ['Month', '글'],
			      ['1월', 50],
			      ['2월', 19],
			      ['3월', 40],
			      ['4월', 20],
			      ['5월', 103],
			      ['6월', 103],
			      ['7월', 103],
			      ['8월', 103],
			      ['9월', 103],
			      ['10월', 105],
			      ['11월', 10],
			      ['12월', 105]
			    ]);

			    var options = {
			      title: '기타 포유류 게시글 통계',
			      curveType: 'function',
			      legend: {
			        position: 'bottom'
			      },
			      colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66'],
			      chartArea: {
			        width: 500
			      },
			    };

			    var chart = new google.visualization.LineChart(document.getElementById('etc-board-chart'));

			    chart.draw(data, options);
			    //반응형 적용
			    window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  }

	})(jQuery);
		
////////////////////////////기타 게시판별 게시글 통계 ////////////////////////////////////////
		google.charts.load("current", {
			  packages: ["corechart"]
			});
			google.charts.setOnLoadCallback(drawEtcAll);

			function drawEtcAll() {
			  var data = google.visualization.arrayToDataTable([
			    ['Task', 'Hours per Day'],
			    ['사진', 400],
			    ['동영상', 300],
			    ['질문', 99],
			    ['팁', 154],
			  ]);

			  var options = {
			    title: '기타 포유류 게시판별 게시물 통계',
			    pieHole: 0.4,
			    colors: ['#76C1FA', '#63CF72', '#F36368', '#FABA66','#ff0000'],
			    chartArea: {
			      width: 500
			    },
			  };

			  var Donutchart = new google.visualization.PieChart(document.getElementById('etc-all-chart'));
			  Donutchart.draw(data, options);
			  //반응형 적용
			  //window.addEventListener('resize', function() { chart.draw(data, options); }, false);
			  $(window).resize(function(){ 
				  drawEtcAll(); 
				     }); 
			}
		////////////////////////////기타 게시판별 게시글 통계 끝////////////////////////////////////////

/////////////////////////////////기타 포유류 통계 끝///////////////////////////////////////////////////
