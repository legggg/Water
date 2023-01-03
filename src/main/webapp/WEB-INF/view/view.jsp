<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>진행중인 기부 자세히</title>
</head>

<body>
<%@ include file="donaing.jsp"%>

<div>
    <form role="form" method="post">
        <input type="hidden" name="gdsNum" value="${view.cntr_sn}" />
    </form>
    <p><span>기부명: </span>${view.cntr_ttl}</p>
    <p><span>기부내용: </span>${view.cntr_cn}</p>
</div>
<div>
    <button type="button" onclick="location.href='makedona'" >기부하러가기</button>
</div>


</body>



</html>