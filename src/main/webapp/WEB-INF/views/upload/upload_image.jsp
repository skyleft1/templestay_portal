<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>user_join</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/program.css">

<script src='${pageContext.request.contextPath}/resources/js/jquery-3.1.0.js'></script>
<script src='${pageContext.request.contextPath}/resources/js/jquery-ui.js'></script>
<script src="${pageContext.request.contextPath}/resources/js/common.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/ajaxsetup.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/MyApp.js"></script>

<script>
$(document).ready(function(){
	
});
</script>

</head>

<body>

    <!-- header -->
    <div class='header'>
        <%@ include file="../header_footer/header.jsp" %>
    </div>

    <!-- upload -->
    <div class='wrap'>
        <div class='side_menu'></div>
        <div class='program_content'>
            <div class=''>
                <div class='title'>
                    <h3>프로그램 추가</h3>
                </div>
                <div class=''>
                    <form action="/upload/upload_image" enctype="multipart/form-data" method="post">
                    
                        Upload Directory :  
                        <input type="text" name="upDir" value="c:/upload/" />
                        <br />
                        <br /> 
                        <input type="file" name="image" />
                        <br />
                        
                        <br /> 
                        <input type="text" name="programno" />
                        <br />
                        <input type="submit" value="이미지저장"/>
                    </form>
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