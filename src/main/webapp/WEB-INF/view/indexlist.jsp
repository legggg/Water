<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>상품 목록</title>
    <link rel="stylesheet" href="css/indexregister.css" />
</head>

<style>
    #container_box table td { width:100px; }
</style>

<body>
<%@ include file="index.jsp"%>

<div class="wrapper">
    <form role="form" method="post" autocomplete="off">
        <div class="wrap">

            <h2>상품 목록</h2>
            <table>
                <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
<%--                    <th>내용</th>--%>
                    <th>목표금액</th>
                    <th>기부대상</th>
                    <th>기부방법</th>
                    <th>작성날짜</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="list">
                    <tr>
                        <td>${list.cntr_sn}</td>
                        <td>
                            <a href="indexview?n=${list.cntr_sn}">${list.cntr_ttl}</a>
                        </td>
<%--                        <td>${list.cntr_cn}</td>--%>
                        <td><fmt:formatNumber value="${list.cntr_obctr}" pattern="###,###,###"/></td>
                        <td>${list.cntr_category}</td>
                        <td>${list.cntr_category2}</td>
                        <td><fmt:formatDate value="${list.rgtr_dt}" pattern="yyyy-MM-dd"/></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>
    </form>

</div>

</body>
</html>
