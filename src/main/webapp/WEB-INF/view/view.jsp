<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>진행중인 기부 자세히</title>
    <link rel="stylesheet" href="css/view.css" />
</head>

<body>
<%@ include file="donaing.jsp"%>


<div id="container">
    <div class="collect_wrap">
        <div class="content_content">
            <h2 class="theme"></h2>
            <h3 class="title">${view.cntr_ttl}</h3>
            <%--            <ul class="collect_tab" id="collect_tab"></ul>--%>
            <div class="tab_content">
                <ul class="intro_list editor_base">
                    <li>
                        <dl>
                            <dt id="paraTitle" style="padding-bottom: 20px"><img src=${view.cntr_file_id} alt width="100%" height="300" class="card_img"></dt>
                            <dd id="paraContent">${view.cntr_cn}</dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>

        <div class="content_side">
            <div class="section_title"><p class="tit" style="font-size: 20px">${view.cntr_ttl}</p></div>
            <div class="section_status">
                <div class="graph_wrap">
                    <div class="graph_status">
                        <span class="per">
                            <strong class="num">${view2.percent}</strong>%
                        </span>
                    </div>
                </div>
                <div class="term_area">
                    <p>
                        <strong>${view.cntr_str_dt} ~ ${view.cntr_end_dt}</strong>
                    </p>
                </div>
                <div class="num_area">
                    <p class="status_num">
                        <strong><fmt:formatNumber value="${view2.ctbny_pc}" pattern="###,###,###"/></strong>
                        <span>원 달성</span>
                    </p>
                    <p class="detail_num">
                        <span><fmt:formatNumber value="${view.cntr_obctr}" pattern="###,###,###"/></span>
                        <em style="font-style: inherit">원 목표</em>
                    </p>
                </div>
            </div>

            <div class="section_btn">
                <a href='/viewinputdona?n=${view.cntr_sn}' class="bt donate jq_donate" data-google="모금함_View" data-stat="기부하기_상단_BTN_CLK" >모금함 기부하기</a>
            </div>
        </div>
    </div>
</div>

</body>
</html>