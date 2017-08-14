<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/reservation_list.css">
<link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/jquery-ui.js'></script>
<script src='/resources/js/common.js'></script>

<script>

$(document).ready(function(){
	$('.wrap_form').on('click', '.location_select_tr .left_item', function(e){
		$(this).addClass('location_selected');
		$(this).siblings().removeClass('location_selected');
		var option = $(this).text();
		$('.location_option_selected').html("<span>"+option+"</span>");
    });
    $('.wrap_form').on('click', '.thema_select_tr .left_item', function(e){
        $(this).addClass('thema_selected');
        $(this).siblings().removeClass('thema_selected');
        var option = $(this).text();
        $('.thema_option_selected').html("<span>"+option+"</span>");
    });
    
    
    // 상세정보, 예약하기 가기
    $('body').on('click', '.go_view', function(e){
        window.location.href= '/reservation/reservation_view';
    });
    $('body').on('click', '.go_reservation', function(e){
        window.location.href= '/reservation/reservation_reservation';
    });
    
    
    // 리스트 보여주기
    $('.go_list').click(function(e){
        var location = $('.location_option_selected').text();
        var thema = $('.thema_option_selected').text();
        var reserve_date = $('.calander').val();
        window.location.href = '/reservation/reservation_list?location='+location+'&thema='+thema+'&reserve_date='+reserve_date;
    });
    
});

</script>


</head>

<body>

    <div class="wrap">
        <div class="header">
            <%@ include file="../guide/header.jsp" %>
        </div>


        <div class="wrap_reservation">
            <div class="">
                <div class='wrap_form'>
                        <table>
                            <tbody>
                                <tr class='location_select_tr' >
                                    <!-- 지역명 선택창 -->
                                    <th class='location_select'>지역 선택</th>
                                    <td>
                                        <ul>
                                            <li class='left_item'>경기도</span><span
                                                class='right_item'>00</span></li>
                                            <li class='left_item'>강원도</span><span
                                                class='right_item'>00</span></li>
                                            <li class='left_item'>제주도</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>인천</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>충청남도</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>충청북도</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>경상남도</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>경상북도</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>전라남도</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>전라북도</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>부산</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>서울</span><span
                                                class='right_item'></span></li>
                                        </ul>
                                    </td>
                                </tr>

                                <!-- 테마 선택창 -->
                                <tr class='thema_select_tr' >
                                    <th class='Thema_select'>테마 선택</th>
                                    <td>
                                        <ul>
                                            <li class='left_item'>휴식형</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>자유형</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>체험형</span><span
                                                class='right_item'></span></li>
                                        </ul>
                                    </td>
                                </tr>

                                <!-- 예약일 선택창 -->
                                <tr>
                                    <th class='reserve_date'>날짜 선택</th>
                                    <td><input class='calander' type='text' name='' placeholder='예약일선택'></td>
                                </tr>
                                <tr class='selected_option'>
                                    <th>선택된 옵션</th>
                                    <td>
                                        <span class='location_option_selected'></span>
                                        <span class='thema_option_selected'></span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class=''>
                            <input type='button' class='go_list' value='예약가기'>
                        </div>
                </div>
                
                <div class='wrap_reservation_list'>
                    <div class=''>
                    <c:forEach var='programlist' items='${list}' varStatus='status'>
                        <div class='reservation_list' programno='${programlist.programno}'>
                            <div class='list_left'>
                                <img src='/resources/img/ad24.jpg'/>
                            </div>
                            <div class='list_mid'>
                                <div class=''><name>${programlist.templecd}</name><type>[${programlist.programtype}]</<type></div>
                                <div class=''>${programlist.programname}</div>
                                <div class=''>${programlist.programdetail}</div>
                                <div class=''>연락처 : </div>
                                <div class=''>주소 : </div>
                            </div>
                            <div class='list_right'>
                                <div class='go_view'>상세정보</div>
                                <div class='go_reservation'>예약하기</div>
                            </div>
                        </div>
                    </c:forEach>
                        <!-- 
                        <div class='reservation_list' programno='1'>
                            <div class='list_left'>
                                <img src='/resources/img/ad24.jpg'/>
                            </div>
                            <div class='list_mid'>
                                <div class=''>사찰이름 templecd<a2>테마</a2></div>
                                <div class=''>프로그램이름 programname </div>
                                <div class=''>설명 programdetail 설명 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 디비 </div>
                                <div class=''>연락처 : 010101485</div>
                                <div class=''>주소 : 강원도 산골 (지번주소로?)</div>
                            </div>
                            <div class='list_right'>
                                <div class='go_view'>상세정보</div>
                                <div class='go_reservation'>예약하기</div>
                            </div>
                        </div>
                         -->
                    </div>
                </div>
                <div class='reservation_map'>
                    <div class=''></div>
                </div>
            </div>
        </div>
        
        
        <div class="footer">
            <%@ include file="../guide/footer.jsp" %>
        </div>
    </div>

</body>
</html>