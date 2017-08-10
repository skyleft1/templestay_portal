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
                <form>
                    <div class='lacation'>
                        <input type='text' name='' value='지역명 또는 사찰 이름을 입력해 주세요.'>
                    </div>
                    <div class='Thema'>
                        <input type='text' name='' value='테마선택'>
                    </div>
                    <div class='reserve_date'>
                        <input class='calander' type='text' name='' value='예약일선택'>
                    </div>
                    <div class='reserve_number'>
                        <input type='text' name='' value='예약인원'>
                    </div>
                    <div class=''>
                        <div class='submit' >예약</div>
                    </div>
                </form>
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