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
<script src="/resources/js/ajaxsetup.js"></script>
<script src="/resources/js/MyApp.js"></script>

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
    
    // 상세정보 가기
    $('body').on('click', '.go_view', function(e){
        var reserve_date = $('.calander').val();
        var programno = $(this).attr('programno');
        window.location.href= '/reservation/reservation_view?programno='+programno+'&reserve_date='+reserve_date;
    });
    
    // 예약하기 가기
    $('body').on('click', '.go_reservation', function(e){
    	
    	// 로그인 하지 않았을 경우 팝업 경고 출력
    	if(${session_user.userid == null}){
    		var programno = $(this).attr('programno');
    		var reserve_date = $('.calander').val();
    		
            $('.popup_cancel_wrap').show();
            $('.popup_content').text( "로그인을 해야 이용가능한 서비스입니다." );
            $('.popup_button_cancel').click(function(e){
                $('.popup_cancel_wrap').hide();
                window.location.href= '/user/user_login?programno='+programno+'&reserve_date='+reserve_date;
            })
    	}

    	else{
            var programno = $(this).attr('programno');
            var reserve_date = $('.calander').val();
            window.location.href= '/reservation/reservation_reservation?programno='+programno+'&reserve_date='+reserve_date;
        }
    });
    
    // 리스트 보여주기
    $('.go_list').click(function(e){
        var location = $('.location_option_selected').text();
        var thema = $('.thema_option_selected').text();
        var reserve_date = $('.calander').val();
        var searchword = $('.searchword').val();
        window.location.href = '/reservation/reservation_list?location='+location+'&thema='+thema+'&reserve_date='+reserve_date+'&searchword='+searchword;
    });
    
    // index에서 날짜가 넘어올경우 유지함
    var checkdate = "${reserve_date}";
    if(checkdate != null){
    	$('.calander').val(checkdate);
    }
});

</script>


</head>

<body>

    <div class="wrap">
        <div class="header">
            <%@ include file="../header_footer/header.jsp" %>
        </div>


        <div class="wrap_reservation">
            <div class="">
                <div class='wrap_form'>
                        <table>
                            <tbody>
                                <tr class='wrap_searchword'    >
                                    <th>사찰 검색</th>
                                    <td>
                                        <input type='text'  class='searchword' placeholder='사찰이름을 입력하세요. 예) 경기사 -> 경기' />  
                                    </td>
                                </tr>
                                <tr class='location_select_tr' >
                                    <!-- 지역명 선택창 -->
                                    <th class='location_select'>지역 선택</th>
                                    <td>
                                        <ul>
                                            <li class='left_item'>경기</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>강원</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>제주</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>인천</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>충남</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>충북</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>경남</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>경북</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>전남</span><span
                                                class='right_item'></span></li>
                                            <li class='left_item'>전북</span><span
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
                            <input type='button' class='go_list' value='사찰찾기'>
                        </div>
                </div>
                
                <div class='wrap_reservation_list'>
                    <div class=''> <p><a2>총 <strong>${list_size}</strong> 개의 프로그램이 검색되었습니다.</a2><p>
                    <c:forEach var='programlist' items='${list}' varStatus='status'>
                        <div class='reservation_list' programno='${programlist.programno}'>
                            <div class='list_left'>
 
                                <img class="small_img_click" src="data:${programlist.contentType};base64,${programlist.imageBase64}" />

                                <!-- 
                                <img src='/resources/img/ad24.jpg'/>
                                 -->
                            </div>
                            <div class='list_mid'>
                                <div class=''><name>${programlist.templecd}</name><type>[${programlist.programtype}]</<type></div>
                                <div class=''>${programlist.programname}</div>
                                <div class=''>${programlist.programdetail}</div>
                                <div class=''>주소 : ${programlist.templeaddr_jibun}</div>
                                <div class=''>연락처 : ${programlist.templephone} / 예약가능일 : <fmt:formatDate value="${programlist.availabledate_start}" pattern="yyyy.MM.dd"/> ~ <fmt:formatDate value="${programlist.availabledate_end}" pattern="yyyy.MM.dd"/></div>
                            </div>
                            <div class='list_right'>
                                <div class='go_view' programno='${programlist.programno}'>상세정보</div>
                                <div class='go_reservation' programno='${programlist.programno}'>예약하기</div>
                            </div>
                        </div>
                    </c:forEach>

                    </div>
                </div>
                <div class='reservation_map'>
                    <div class=''></div>
                </div>
            </div>
        </div>
        
        
        <div class="footer">
            <%@ include file="../header_footer/footer.jsp" %>
        </div>
    </div>

</body>
</html>