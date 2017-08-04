<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/resources/css/common.css">
<link rel="stylesheet" type="text/css" href="/resources/css/bbs_view.css">
<link rel="stylesheet" type="text/css" href="/resources/css/jquery-ui.css">

<link rel='stylesheet' href='http://fonts.googleapis.com/earlyaccess/nanumgothic.css'>

<script src='/resources/js/jquery-3.1.0.js'></script>
<script src='/resources/js/jquery-ui.js'></script>
<script src="/resources/js/common.js"></script>

</head>
<body>

    <!-- header -->
    <div class="wrap">
        <div class="header">
            <%@ include file="../guide/header.jsp"%>
        </div>

        <!-- bbs_view -->
        <div class=''>
            <div class='bbs_view_content'>
                <div class=''>
                    <div class='bbs_view_maintitle'>
                        <a2>게시판</a2>
                    </div>
                    <div class=''>
                        <table>
                            <tbody>
                                <tr>
                                    <th><a4>번호</a4></th>
                                    <td><a5>번호 내용</a5></td>
                                </tr>
                                <tr>
                                    <th><a4>제목</a4></th>
                                    <td><a5>제목 내용</a5></td>
                                </tr>
                                <tr>
                                    <th><a4>작성자</a4></th>
                                    <td><a5>작성자 내용</a5></td>
                                </tr>
                                <tr>
                                    <th><a4>날짜</a4></th>
                                    <td><a5>날짜 내용</a5></td>
                                </tr>
                                <tr>
                                    <th><a4>내용</a4></th>
                                    <td><a5>내용 내용</a5></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class='modify_delete'>
                            <div>
                                <input type='bottom' name=''
                                    class='bbs_view_modify' value='수정'>
                            </div>
                            <div>
                                <input type='bottom' name=''
                                    class='bbs_view_delete' value='삭제'>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!-- footer -->
        <div class="footer">
            <%@ include file="../guide/footer.jsp"%>
        </div>
    </div>


</body>
</html>
