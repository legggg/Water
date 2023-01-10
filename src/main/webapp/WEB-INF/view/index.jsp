<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <%@ include file="header.jsp"%>
</head>

<style>
</style>

<body>
<div id="map" style="width:100%;height:100%;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=e09591bdb881d01b9c0bc77a94108e53"></script>
<script>
    var container = document.getElementById('map');
    var options = {
        center: new kakao.maps.LatLng(33.450701, 126.570667),
        level: 3
    };

    var map = new kakao.maps.Map(container, options);
</script>

</body>

</html>