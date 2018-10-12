/**
 * 
 */

$(function(){
	
	/*console.log("wha dhkfk tq");
	var apiURI = "http://api.openweathermap.org/data/2.5/weather?q="+"Seoul"+"&appid="+"618cbdbc4dd1290f2eddf7d1aecd8f07";
    $.ajax({
        url: apiURI,
        dataType: "json",
        type: "GET",
        async: "false",
        success: function(resp) {
            console.log(resp);
            console.log("현재온도 : "+ (resp.main.temp- 273.15) );
            console.log("현재습도 : "+ resp.main.humidity);
            console.log("날씨 : "+ resp.weather[0].main );
            console.log("상세날씨설명 : "+ resp.weather[0].description );
            console.log("날씨 이미지 : "+ resp.weather[0].icon );
            console.log("바람   : "+ resp.wind.speed );
            console.log("나라   : "+ resp.sys.country );
            console.log("도시이름  : "+ resp.name );
            console.log("구름  : "+ (resp.clouds.all) +"%" );
//            $("#weather").attr("src", "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png");
            var imgURL = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png";
            $("#weather_img").attr("src", imgURL);
            var cel = String(resp.main.temp-273.15);
            $("#weather_cel").text(cel.substring(0,4)+"°C");
            $("#weather_city").text(resp.name);
        }
    });*/

    $.ajax({
    	url: "http://api.openweathermap.org/data/2.5/weather?q="+"Seoul"+"&appid="+"618cbdbc4dd1290f2eddf7d1aecd8f07",
    	dataType: "json",
    	success: printWeather,
    	error: function(error){
    		console.log("error : " + error);
    	}
    });
    
});

var printWeather = function(data){
	$("#weather_img").prop("src", "http://openweathermap.org/img/w/" + data.weather[0].icon + ".png");
	$("#weather_cel").prop("value", String(data.main.temp-273.15).substring(0,4)+"°C");
	$("#weather_city").prop("value", data.name);
};