<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/reservation_view.css">
<link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/jquery-ui.js'></script>
<script src='/resources/js/common.js'></script>

<script>

$(document).ready(function(){

    $('.small_img img').click(function(e){
    	$('.big_img > img').hide();
        var index = $(this).index() +1;
        $('.big_img > img:nth-child('+index+')').show();
    });
    

    $('body').on('click', '.go_reservation', function(e){
    	var programno = $(this).attr('programno');
    	var reserve_date = '${reserve_date}';
        window.location.href= '/reservation/reservation_reservation?programno='+programno+'&reserve_date='+reserve_date;
    });

});


</script>




</head>

<body>

    <div class="wrap">
        <div class="header">
            <%@ include file="../guide/header.jsp" %>
        </div>


        <div class="wrap_reservation_view">
            <div class="">
                <div class='temple_info'>
                    <div class=''>${temple1.templecd}</div>
                    <div class=''>${temple1.templephone}</div>
                    <div class=''>
                        <div class=''>${temple1.templeaddr_jibun}</div>
                    </div>
                </div>
                
                <div class='program_info'>
                    <div class=''>${program1.programname}</div>
                    <div class=''>[${program1.programtype}]</div>
                    <div class=''>${program1.programdetail}</div>
                    <div class=''>
                        
                        <div class="big_img" >
                          <img class="big_img_silde" src="/resources/img/ad26.jpg" >
                          <img class="big_img_silde" src="/resources/img/ad25.jpg" >
                          <img class="big_img_silde" src="/resources/img/ad24.jpg" >
                        
                          <div class="small_img">
                              <img class="small_img_click" src="/resources/img/ad26.jpg" >
                              <img class="small_img_click" src="/resources/img/ad25.jpg" >
                              <img class="small_img_click" src="/resources/img/ad24.jpg" >
                          </div>
                        </div>
                        
                    </div>
                </div>
                <div class=''>
                    <div class=''>찾아오시는 길</div>
                    <div id='map'></div>
                </div>
               
                <div class='go_reservation' programno='${program1.programno}'>예약하기</div>
            </div>
        </div>
        

        
        
        <div class="footer">
            <%@ include file="../guide/footer.jsp" %>
        </div>
    </div>
    
    
<script>
 
var map;
    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 35.789840, lng: 129.331897},
        zoom: 15,
        });
        
        var addLatlng1 = new google.maps.LatLng(35.789840, 129.331897);
        var addMarker1 = new google.maps.Marker ({position: addLatlng1, title: '목적지 입니다.'});
        addMarker1.setMap(map); 

};
    
</script>
    
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA9dM4RlcONOfGWs-58QxYVnCBO1IKMuNg&callback=initMap">

</script>


</body>
</html>