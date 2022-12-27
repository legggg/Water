<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>진행중인 기부</title>
    <link rel="stylesheet" href="css/dona.css" />
    <link rel="stylesheet" href="css/style.css" />

<body>
    <%@ include file="header.jsp"%>
    <div>
        <nav class="myMenu1">
            <ul class="menu">
                <li class="link"><a href="">진행중</a></li>
                <li class="menu"><a href="">소통</a></li>
            </ul>
        </nav>
    </div>

    <div>
        <ul>
            <li><a href="/list?c=0">아동,청소년</a></li>
            <li><a href="/list?c=1">어르신</a></li>
            <li><a href="/list?c=2">장애인</a></li>
            <li><a href="/list?c=3">동물</a></li>
            <li><a href="/list?c=4">기타</a></li>
        </ul>
    </div>


</body>

</html>