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
    <p><span>기부명: </span>${view.cntr_ttl}</p>
    <p><span>기부내용: </span>${view.cntr_cn}</p>
</div>
<div>
    <form role="form" method="post">
        <input type="hidden" name="cntr_sn" value="${view.cntr_sn}" />
        <div>
            <label>기부금액을 쓰시오</label>
            <input type="text" id="btr_pc" name="btr_pc"/>
        </div>
        <div>
            <button type="submit" id="makeDona_Btn" >보내기</button>
        </div>
    </form>
</div>


</body>



</html>