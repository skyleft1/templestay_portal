<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reservation_view.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='${pageContext.request.contextPath}/resources/js/jquery-3.1.0.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/jquery-ui.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/common.js'></script>
<script src="${pageContext.request.contextPath}/resources/js/ajaxsetup.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/MyApp.js"></script>

<script>

$(document).ready(function(){

	var reserve_date = '${reserve_date}';
	
    $('.small_img img').click(function(e){
    	$('.big_img > img').hide();
        var index = $(this).index() +1;
        $('.big_img > img:nth-child('+index+')').show();
    });
    

 // 예약하기 가기
    $('body').on('click', '.go_reservation', function(e){
        
        // 로그인 하지 않았을 경우 팝업 경고 출력
        if(${session_user.userid == null}){
            var programno = $(this).attr('programno');
            
            $('.popup_cancel_wrap').show();
            $('.popup_content').text( "로그인을 해야 이용가능한 서비스입니다." );
            $('.popup_button_cancel').click(function(e){
                $('.popup_cancel_wrap').hide();
                window.location.href= '${pageContext.request.contextPath}/user/user_login?programno='+programno+'&reserve_date='+reserve_date;
            })
        }

        else{
            var programno = $(this).attr('programno');
            window.location.href= '${pageContext.request.contextPath}/reservation/reservation_reservation?programno='+programno+'&reserve_date='+reserve_date;
        }
    });
});


</script>




</head>

<body>

    <div class="wrap">
        <div class="header">
            <%@ include file="../header_footer/header.jsp" %>
        </div>


        <div class="wrap_reservation_view">
            <div class="">
                <div class='temple_info'>
                    <div class=''>${temple1.templecd}</div>
                    <div class=''>연락처 : ${temple1.templephone}</div>
                    <div class=''>지번주소 : ${temple1.templeaddr_road}</div>
                    <div class=''>도로명주소 : ${temple1.templeaddr_jibun}</div>
                </div>
                <div class='border'></div>
                <div class='program_info'>
                
                    <div class=''>${program1.programname}</div>
                    <div class=''>[${program1.programtype}] 　　　　　예약가능일 : <fmt:formatDate value="${program1.availabledate_start}" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${program1.availabledate_end}" pattern="yyyy.MM.dd"/></div>
                    <div class=''>${program1.programdetail}</div>
                
                
                    <div class='img'>
                        <div class="big_img" >
                        <c:forEach var='list' items='${list}' varStatus='status' >
                            <img class="big_img_silde"  src="data:${list.contentType};base64,${list.imageBase64}" />
<!-- 
                          <img class="big_img_silde" src="${pageContext.request.contextPath}/resources/img/ad26.jpg" >
                          <img class="big_img_silde" src="${pageContext.request.contextPath}/resources/img/ad25.jpg" >
                          <img class="big_img_silde" src="${pageContext.request.contextPath}/resources/img/ad24.jpg" >
 -->                          
                          </c:forEach>
                        
                          <div class="small_img">
                          <c:forEach var='list' items='${list}' varStatus='status' >
                            <img class="small_img_click" src="data:${list.contentType};base64,${list.imageBase64}" />
                          <!-- 
                              <img class="small_img_click" src="${pageContext.request.contextPath}/resources/img/ad26.jpg" >
                              <img class="small_img_click" src="${pageContext.request.contextPath}/resources/img/ad25.jpg" >
                              <img class="small_img_click" src="${pageContext.request.contextPath}/resources/img/ad24.jpg" >
                               -->
                            </c:forEach>
                          </div>
                        </div>
                        
                    </div>
                </div>
                <div class='border'></div>
                <div class=''>
                    <div class=''>찾아오시는 길</div>
                    <div id='map'></div>
                </div>
                <div class='border'></div>
                <div class='wrap_go_reservation'>
                    <div></div>
                    <div class='go_reservation' programno='${program1.programno}'>예약하기</div>
                </div>
            </div>
        </div>
        

        
        
        <div class="footer">
            <%@ include file="../header_footer/footer.jsp" %>
        </div>
    </div>
    
    
<script>
 
var map;
    function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: ${temple1.lat} , lng: ${temple1.lng}},
        zoom: 15,
        });
        
        var addLatlng1 = new google.maps.LatLng( ${temple1.lat}, ${temple1.lng});
        var addMarker1 = new google.maps.Marker ({position: addLatlng1, title: '목적지 입니다.'});
        addMarker1.setMap(map); 

};
    
</script>
    
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA9dM4RlcONOfGWs-58QxYVnCBO1IKMuNg&callback=initMap">

</script>


</body>
</html>