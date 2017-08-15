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
    });
    $('.thema li').click(function(e){
        var val = $(this).children('span').text();
        $('.thema input').val(val);
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
            <%@ include file="guide/header.jsp" %>
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
                                <li><span class='left_item'>경기도</span><span class='right_item'>00</span></li>
                                <li><span class='left_item'>강원도</span><span class='right_item'>00</span></li>
                                <li><span class='left_item'>제주도</span><span class='right_item'></span></li>
                                <li><span class='left_item'>인천</span><span class='right_item'></span></li>
                                <li><span class='left_item'>충청남도</span><span class='right_item'></span></li>
                                <li><span class='left_item'>충청북도</span><span class='right_item'></span></li>
                                <li><span class='left_item'>경상남도</span><span class='right_item'></span></li>
                                <li><span class='left_item'>경상북도</span><span class='right_item'></span></li>
                                <li><span class='left_item'>전라남도</span><span class='right_item'></span></li>
                                <li><span class='left_item'>전라북도</span><span class='right_item'></span></li>
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
                        <input type='button' class='go_list' value='예약가기'>
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
                        <div class="ad1">우리는 모두 죄인이야!</div>
                        <div class="ad2"><img src="/resources/img/ad21.jpg" alt="광고" /></div>
                        <div class="ad3">
                            <div><strong>프리즌브레이크 사찰</strong></div>
                            <div>죄인 단체 이송 체험!</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">멋있는! 올빼미! 많~고 많지만~</div>
                        <div class="ad2"><img src="/resources/img/ad22.jpg" alt="광고" /></div>
                        <div class="ad3">
                            <div><strong>유격 사찰</strong></div>
                            <div>즐거운 피티 시간~ 다음엔 피티 8번?</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">즐거운 낮잠!</div>
                        <div class="ad2"><img src="/resources/img/ad23.jpg" alt="광고" /></div>
                        <div class="ad3">
                            <div><strong>날로 사찰</strong></div>
                            <div>비싼돈 내고 하루종일 숲속에서 잠만잘 수도 있지!</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">진도 못따라 갈 경우 보충수업도 착실히!</div>
                        <div class="ad2"><img src="/resources/img/ad24.jpg" alt="광고" /></div>
                        <div class="ad3">
                            <div><strong>스파르타 사찰</strong></div>
                            <div>친구들 다 가고 혼자 절하는중!</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">언능 찍어 ㅋ 꼬리뼈 아파 </div>
                        <div class="ad2"><img src="/resources/img/ad25.jpg" alt="광고" /></div>
                        <div class="ad3">
                            <div><strong>인생샷 사찰</strong></div>
                            <div>인생샷도 찍을 수 있어요! (건당 추가비용 청구)</div>
                        </div>
                    </div>
                    <div class="">
                        <div class="ad1">저어언하~!</div>
                        <div class="ad2"><img src="/resources/img/ad26.jpg" alt="광고" /></div>
                        <div class="ad3">
                            <div><strong>넙죽 사찰</strong></div>
                            <div>주지스님 오시는중!</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="footer">
            <%@ include file="guide/footer.jsp" %>
        </div>
    </div>

</body>
</html>