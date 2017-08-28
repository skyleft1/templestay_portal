<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='${pageContext.request.contextPath}/resources/js/jquery-3.1.0.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/jquery-ui.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/common.js'></script>

<script>
console.log('ccc');
</script>

<script>

$(document).ready(function(e){
	

    
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
                템플스테이 포털 사이트 입니다.
구현된 기능 : 검색, 목록출력, 예약, 예약확인, 예약취소


작업환경
- java 1.*          - Spring 4.x        - Tomcat 8.0     
- MySQL 5.x      - MyBatis          - Gradle 3.x

적용언어 
- java              - HTML5            - CSS              
- JavaScrpit      - jQuery

적용 API
- Daum 주소검색             - Google 지도
            </div>
        </div>


        <div class="footer">
            <%@ include file="header_footer/footer.jsp" %>
        </div>
    </div>

</body>
</html>