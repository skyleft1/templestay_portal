<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/reservation_reservation.css">
<link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/jquery-ui.js'></script>
<script src='/resources/js/common.js'></script>
<script src="/resources/js/ajaxsetup.js"></script>
<script src="/resources/js/MyApp.js"></script>

<script>

$(document).ready(function(){
	/* 
	$('.select_num1').change(function(e){
		console.log(document.getElementByName('select_num').value);
	});
	 */
	 
//  인원수 설정
    $('#select_num').change(function(e){
        var sel = document.getElementById('select_num');
        var select_num = sel.options[sel.selectedIndex].value;
        if(select_num == '직접입력'){
            $('.select_num_show').attr('disabled', false);
            $('.select_num_show').val('');
        }
        else{
            $('.select_num_show').val(select_num);
        }
        
    });
	    
	var fixedprice = 0;
    $('.go_num').click(function(e){
        var num = $('.select_num_show').val();
        $('.fee_num').text(num);
        fixedprice = num*${program1.programprice}
        $('.fee_all').text(fixedprice);
    });
    
    // 결제 진행을 위한 submit
    $('.complete_reservation').click(function(e){
    	// date 형식으로 형변환 후 submit
        var myDate = new Date($('.calander').val());
    	$('.reservation_submit input[name="checkdate"]').val(myDate);
    	$('.reservation_submit input[name="number"]').val( $('.fee_num').text());
    	$('.reservation_submit input[name="fixedprice"]').val(fixedprice);
    	$('.reservation_submit').submit();
    });
});

</script>


</head>

<body>

    <div class="wrap">
        <div class="header">
            <%@ include file="../header_footer/header.jsp" %>
        </div>


        <div class="wrap_reservation_reservation">
            <div class="">
            <form class='reservation_submit' method='post'  action ='/reservation/reservation_reservation_success'>
                <input type='hidden' name='programno' value='${program1.programno}'>
                <input type='hidden' name='checkdate' value="">
                <input type='hidden' name='number' value="">
                <input type='hidden' name='fixedprice' value="">
                
                <div class='left'>
                    <div class='left_1'>
                        <div class=''><name>${temple1.templecd}</name></div>
                        <div class=''><addr>${temple1.templeaddr_jibun}</addr></div>
                    </div>
                    <div class='left_2'>
                        <div class=''><span>테마</span>[${program1.programtype}]</div>
                        <div class=''><span>예약일</span><input class='calander' type='text' value='${reserve_date}'>

                        </div>
                        <div class=''><span>인원</span>
                        <SELECT id='select_num'>
                            <OPTION VALUE=1 SELECTED>1명</OPTION>
                            <OPTION VALUE=2>2명</OPTION>
                            <OPTION VALUE=3>3명</OPTION>
                            <OPTION VALUE=직접입력>직접입력</OPTION>
                        </SELECT>
                        <input type='text' class='select_num_show' disabled="disabled" value='1'> 명
                        <input type='button' class='go_num' value='확인'>
                        </div>
                    </div>
                    <div class='left_3'>
                        <div class=''><span>예약자아이디</span><input type='text' name='userid' value='${session_user.userid}'></div>
                        <div class=''><span>이름</span><input type='text' value='${ session_user.username}'></div>
                        <div class=''><span>연락처</span><input type='text' value='${session_user.userphone}'></div>
                    </div>
                </div>
                <div class='right'> 
                    <div class='fee'>
                        <div class=''><span>요금</span>${program1.programprice} 원</div>
                        <div class=''><span>인원</span><d class='fee_num' > </d> 명</div>
                        <div class=''><span>총 결제금액</span><d class='fee_all'>${program1.programprice}</d> 원</div>
                    </div>
                    <div class='payment_type'>
                        <div class='credit'>
                            <input type='radio' checked='checked'>신용카드
                        </div>
                        <div class='without_bankbook'>
                            <input type='radio' >무통장입금
                            <div>무통장입금 예약대기 시간은 최대 1시간입니다. 참여인원의
                                제한으로 인해 입금기한 내 입금이 되지 않으면 예약이 자동 취소되며,
                                먼저 입금이 완료된 고객에게 예약우선권이 있습니다. 긴 대기 예약시간이
                                필요한 경우 고객센터로 문의 바랍니다.
                            </div>
                        </div>
                    </div>
                    <div class=''>
                        <div class='complete_reservation'>결제진행하기</div>
                    </div>
                </div>
                </form>
            </div>
        </div>
        

        
        
        <div class="footer">
            <%@ include file="../header_footer/footer.jsp" %>
        </div>
    </div>


</body>
</html>