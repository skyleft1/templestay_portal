<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reservation_reservation_success.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='${pageContext.request.contextPath}/resources/js/jquery-3.1.0.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/jquery-ui.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/common.js'></script>
<script src="${pageContext.request.contextPath}/resources/js/ajaxsetup.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/MyApp.js"></script>

<script>

$(document).ready(function(){
	
});

</script>


</head>

<body>

    <div class="wrap">
        <div class="header">
            <%@ include file="../header_footer/header.jsp" %>
        </div>


        <div class="wrap_reservation_reservation_success">
            <div class="">
                <div class=''>
                    예약번호 [ ${reservationno} ] 로 예약완료 되었습니다
                    <br> 
                    <p><a href= '${pageContext.request.contextPath}/user/user_confirm_reservation_list' >예약확인 페이지로 가기</a></p>
                </div>
            </div>
        </div>
        

        
        
        <div class="footer">
            <%@ include file="../header_footer/footer.jsp" %>
        </div>
    </div>


</body>
</html>