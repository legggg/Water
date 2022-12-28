<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>진행중인 기부 현황</title>
    <link rel="stylesheet" href="css/dona.css" />
</head>

<body>
<%@ include file="donaing.jsp"%>

<div>
    <ul class="myContent1">
        <c:forEach items="${list}" var="list">
            <li>
                <div class="cntr_ttl">
                    <a href="/view?n=${list.cntr_sn}">${list.cntr_ttl}</a>
                </div>
            </li>
        </c:forEach>
    </ul>
</div>

</body>

</html>