<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>기부를 해주세요</title>
</head>

<body>
<%@ include file="donaing.jsp"%>


<div class="content_side">
    <form role="form" method="post">
        <input type="hidden" name="cntr_sn" value="${view.cntr_sn}" />
        <div>
            <label>기부자명</label>
            <input type="text" id="btn_nm" name="btn_nm" style="border: solid"/>
        </div>
        <div>
            <label>기부금액을 쓰시오</label>
            <input type="text" id="btr_pc" name="btr_pc" style="border: solid"/>
        </div>
        <div>
            <button type="submit" id="makeDona_Btn" >기부하기</button>
        </div>
    </form>
</div>


</body>
</html>