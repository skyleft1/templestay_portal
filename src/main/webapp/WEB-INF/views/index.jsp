<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/index.css">
<link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/jquery-ui.js'></script>
<script src='/resources/js/common.js'></script>

<script>

$(document).ready(function(e){
	
	// 슬라이드
	$('.wrap_main_reserve input').click(function(e){
		$(this).next().stop().slideDown(200);
	});
	$('body').click(function(e){
		if(!$(e.target).hasClass('location_input')){
			$('.location_select').stop().slideUp(200);
		}
	})
    $('body').click(function(e){
        if(!$(e.target).hasClass('thema_input')){
            $('.thema_select').stop().slideUp(200);
        }
    })
    
 // 슬라이드 마우스 오버시 색 넣어줌
    $('.wrap_main_reserve li').mouseenter(function(e){
        $(this).css('background-color', '#d6d6d6');
    });
    $('.wrap_main_reserve li').mouseleave(function(e){
    	$(this).css('background-color', 'white');
    });
    
    // 슬라이드 선택시 해당 값을 input의 value값으로 넣어준다
    $('.location li').click(function(e){
        var val = $(this).children('span').text();
        $('.location input').val(val);
        $('.location input').addClass('input_value');
    });
    $('.thema li').click(function(e){
        var val = $(this).children('span').text();
        $('.thema input').val(val);
        $('.thema input').addClass('input_value');
    });
    
    
    $('.go_list').click(function(e){
    	var location = $('.location_input').val();
        var thema = $('.thema_input').val();
        var reserve_date = $('.calander').val();
        window.location.href = '/reservation/reservation_list?location='+location+'&thema='+thema+'&reserve_date='+reserve_date;
    });

});

</script>

</head>

<body>

    <div class="wrap">
        <div class="header">
            <%@ include file="header_footer/header.jsp" %>
        </div>

        <div class="wrap_index">
            <div class="">
                <div class="main_img">

                </div>
            </div>
            <div class="wrap_main_reserve">
            <!-- 
                <form class='' action='/reservation/reservation_list' method='get'  >
                 -->
                    <div class='location'>
                        <input class='location_input' type='text' name='' placeholder='지역명을 선택해 주세요.'>
                        
                        <!-- 지역명 선택창 -->
                        <div class='location_select'>
                            <ul>
                                <li><span class='left_item'>경기</span><span class='right_item'></span></li>
                                <li><span class='left_item'>강원</span><span class='right_item'></span></li>
                                <li><span class='left_item'>제주</span><span class='right_item'></span></li>
                                <li><span class='left_item'>인천</span><span class='right_item'></span></li>
                                <li><span class='left_item'>충남</span><span class='right_item'></span></li>
                                <li><span class='left_item'>충북</span><span class='right_item'></span></li>
                                <li><span class='left_item'>경남</span><span class='right_item'></span></li>
                                <li><span class='left_item'>경북</span><span class='right_item'></span></li>
                                <li><span class='left_item'>전남</span><span class='right_item'></span></li>
                                <li><span class='left_item'>전북</span><span class='right_item'></span></li>
                                <li><span class='left_item'>부산</span><span class='right_item'></span></li>
                                <li><span class='left_item'>서울</span><span class='right_item'></span></li>
                            </ul>
                        </div>
                        
                    </div>
                    
                    <div class='thema'>
                        <input class='thema_input' type='text' name='' placeholder='테마선택'>
                    <!-- 테마 선택창 -->
                        <div class='thema_select'>
                            <ul>
                                <li><span class='left_item'>휴식형</span><span class='right_item'></span></li>
                                <li><span class='left_item'>자유형</span><span class='right_item'></span></li>
                                <li><span class='left_item'>체험형</span><span class='right_item'></span></li>
                            </ul>
                        </div>
                    </div>
                    <div class='reserve_date'>
                        <input class='calander' type='text' name='' placeholder='예약일선택'>
                    </div>
                    <div class=''>
                        <input type='button' class='go_list' value='사찰찾기'>
                    </div>
<!--                     
                </form>
 -->                

            </div>


            <div class="wrap_advertisement">
                <div class="advertisement_title">
                    <div><strong>PICK</strong></div>
                    <div>템플스테이 에서 추천하는 사찰입니다!</div>
                </div>
                <div class="advertisement">
                    <div class="">
                        <div class="ad1">${program1.programname}</div>
                        <div class="ad2">
                            <img class="" src="data:${program1.contentType};base64,${program1.imageBase64}" />
                        </div>
                        <div class="ad3">
                            <div><strong>${program1.templecd}</strong></div>
                            <div>스님의 북치기 경청!</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">${program2.programname}</div>
                        <div class="ad2">
                            <img class="" src="data:${program2.contentType};base64,${program2.imageBase64}" />
                        </div>
                        <div class="ad3">
                            <div><strong>${program2.templecd}</strong></div>
                            <div>외국인도 오세요!</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">${program3.programname}</div>
                        <div class="ad2">
                            <img class="" src="data:${program3.contentType};base64,${program3.imageBase64}" />
                        </div>
                        <div class="ad3">
                            <div><strong>${program3.templecd}</strong></div>
                            <div>옻단청 체험~</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">${program4.programname}</div>
                        <div class="ad2">
                            <img class="" src="data:${program4.contentType};base64,${program4.imageBase64}" />
                        </div>
                        <div class="ad3">
                            <div><strong>${program4.templecd}</strong></div>
                            <div>신나는 캠프파이어!</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">${program5.programname}</div>
                        <div class="ad2">
                            <img class="" src="data:${program5.contentType};base64,${program5.imageBase64}" />
                        </div>
                        <div class="ad3">
                            <div><strong>${program5.templecd}</strong></div>
                            <div>공기좋고~ 자연치유되는 곳으로 오세요~</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">${program6.programname}</div>
                        <div class="ad2">
                            <img class="" src="data:${program6.contentType};base64,${program6.imageBase64}" />
                        </div>
                        <div class="ad3">
                            <div><strong>${program6.templecd}</strong></div>
                            <div>몸도 마음도 편안해져요!</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="footer">
            <%@ include file="header_footer/footer.jsp" %>
        </div>
    </div>

</body>
</html>