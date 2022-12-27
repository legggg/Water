<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>asdfasdfsafdsadf</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/dona.css" />

<body>
    <%@ include file="header.jsp"%>

    <div id="container">
        <ul class="myMenu">
            <li class="menu1"><a href="">진행중</a>
                <ul class="menu1_s submenu">
                    <li><a href="/list?c=0">아동,청소년</a></li>
                    <li><a href="/list?c=1">어르신</a></li>
                    <li><a href="/list?c=2">장애인</a></li>
                    <li><a href="/list?c=3">동물</a></li>
                    <li><a href="/list?c=4">기타</a></li>
                </ul>
            </li>
            <li class="menu2"><a href="">소통</a></li>
        </ul>
    </div>

    <div>
        <ul>
            <c:forEach items="${list}" var="list">
                <li>
                    <div class="cntr_ttl">
                    <a>${list.cntr_ttl}</a>
                    </div>
                </li>
            </c:forEach>
        </ul>
    </div>


</body>

</html>