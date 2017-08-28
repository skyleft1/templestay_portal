<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user_confirm_reservation</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/user_confirm_reservation_one.css">

<script src='${pageContext.request.contextPath}/resources/js/jquery-3.1.0.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/jquery-ui.js'></script>
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ajaxsetup.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/MyApp.js"></script>

<script>
$(document).ready(function(){
    
    $('.go_reservation_delete').click(function(e){
    	var reservationno= ${reservation1.reservationno};
    	window.location.href= '${pageContext.request.contextPath}/reservation/reservation_reservation_delete?reservationno='+ reservationno;
    })
});


</script>

</head>

<body>

    <!-- header -->
    <div class='header'>
        <%@ include file="../header_footer/header.jsp" %>
    </div>

    <!-- reservation_one -->
    <div class='wrap'>
        <div class='reservation_one'>
            <div class=''>
                <div class='title'>
                    <h3>[${session_user.userid}] 님의 예약번호 [${reservation1.reservationno}] 번 예약</h3>
                </div>
                <div class=''>
                <!-- 
                    <div><a href='${pageContext.request.contextPath}/user/user_modify_reservation'>예약변경</a></div>
 -->
                    <table>
                        <tbody>
                            <tr class='' reservationno='reservation_list.reservationno'>
                                <th>예약번호</th>
                                <td>${reservation1.reservationno}</td>
                            </tr>
                            <tr>
                                <th>예약일</th>
                                <td><fmt:formatDate value="${reservation1.checkdate}" pattern="yyyy-MM-dd"/></td>
                            </tr>
                            <tr>
                                <th>아이디</th>
                                <td>${session_user.userid}</td>
                            </tr>
                            <tr>
                                <th>이름</th>
                                <td>${session_user.username}</td>
                            </tr>
                            <tr>
                                <th>사찰이름</th>
                                <td>${temple1.templecd}</td>
                            </tr>
                            <tr>
                                <th>연락처</th>
                                <td>${temple1.templephone}</td>
                            </tr>
                            <tr>
                                <th>주소</th>
                                <td>
                                    [지번] ${temple1.templeaddr_jibun}
                                    <br>
                                    [도로] ${temple1.templeaddr_road}
                                </td>
                            </tr>
                            <tr>
                                <th>프로그램이름</th>
                                <td>${reservation1.programname}</td>
                            </tr>
                            <tr>
                                <th>프로그램타입</th>
                                <td>${reservation1.programtype}</td>
                            </tr>
                            <tr>
                                <th>예약인원</th>
                                <td>${reservation1.number} 명</td>
                            </tr>
                                
                        </tbody>
                    </table>
                        
                    <div class='go_reservation_delete'>예약취소</div>    
                </div>
            </div>
        </div>
    </div>



    <!-- footer -->
    <div class='footer'>
        <%@ include file="../header_footer/footer.jsp" %>
    </div>


</body>
</html>