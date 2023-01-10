<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>기간 지난 기부글 자세히</title>
</head>

<style>
    * {
        /*font-family: NanumBarunGothic,"나눔바른고딕","Nanum Barun Gothic",Sans-serif;*/
    }

    body{
        background-color: #fff;
        -webkit-font-smoothing: antialiased;
        min-height: 1590px;
    }

    div {
        display: block;
    }

    #container{
        padding-bottom: 0;
        width: 100%;
        position: relative;
        overflow: hidden;
        margin: 0;
    }

    .collect_wrap{
        width: 1098px;
        margin: 0 auto 90px;
        border-bottom: 1px solid #e5e5e5;
        background: url(https://ssl.pstatic.net/happyimg2/img/mainhome/bg_crowd.gif) repeat-y;
    }

    .collect_wrap::after{
        content: '';
        display: table;
        width: 100%;
        clear: both;
    }

    .collect_wrap .content_content {
        float: left;
        width: 800px;
        padding: 60px 94px 90px;
        font-size: 16px;
    }

    .collect_wrap .theme {
        padding-bottom: 16px;
        font-size: 17px;
        font-weight: 400;
        color: black;
        letter-spacing: -.06em;
        line-height: 1;
    }

    .collect_wrap .title {
        font-size: 36px;
        font-weight: 400;
        color: #222;
        letter-spacing: .4px;
        line-height: 40px;
        margin: 20px 0 50px;

    }

    .intro_list {
        margin: 0;
        overflow: hidden;
    }

    .editor_base{
        line-height: 1.5;
    }

    ol, ul{
        list-style: none;
    }

    .intro_list li dt{
        font-weight: 700;
        font-size: 20px;
        color: #444;
        line-height: 30px;
        letter-spacing: 1px;
    }

    .intro_list li dd{
        margin-top: 16px;
        font-size: 18px;
        color: #666;
        line-height: 32px;
        text-align: justify;
        letter-spacing: -.01px;
    }

    .collect_wrap .content_side {
        float: right;
        width: 282px;
        font-size: 15px;
    }

    .content_side .tit {
        padding-top: 96px;
        padding-bottom: 24px;
        text-align: center;

    }

    .content_side .bt {
        display: inline-block;
        width: 282px;
        height: 60px;
        padding-top: 17px;
        border: 1px solid rgba(0,0,0,.1);
        background: #439A97;
        font-size: 22px;
        font-weight: 700;
        color: #fff;
        text-decoration: none;
        text-shadow: 0 0 1px #086a1e;
        text-align: center;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        overflow: hidden;
    }


    div {
        display: block;
    }

    .content_side .section_status {
        position: relative;
        padding-bottom: 25px;
    }

    .section_status {
        margin: 0 1px;
        padding: 23px 29px 27px;
        border-bottom: 0;
    }
    .graph_status {
        padding-right: 2px;
    }
    .graph_status::after{
        display: block;
        clear: both;
        content: "";
    }

    .graph_status .per{
        float: left;
        font-size: 24px;
        color: #439A97;
    }

    .graph_status .per strong {
        font-size: 53px;
        font-weight: 700;
        line-height: 70px;
        letter-spacing: -2px;
    }

    .content_side .section_status .term_area p{
        padding: 13px 0 11px;
        font-size: 18px;
        color: #888;
        letter-spacing: -.04em;
    }

    .content_side .section_status .num_area {
        padding-top: 24px;
    }

    .section_status .num_area .status_num {
        padding-bottom: 0px;
        font-size: 18px;
        color: #444;
    }

    .section_status .num_area .status_num strong {
        display: inline-block;
        font-size: 34px;
        font-weight: 400;
        color: #444;
        vertical-align: text-top;
    }

    .section_status .num_area .status_num span {
        display: inline-block;
        margin: 8px 0 0 4px;
        vertical-align: text-top;
    }

    .num_area .detail_num {
        margin: 6px 0 0 0;
        color: #888;
    }

    .num_area .detail_num strong {
        font-weight: 400;
        vertical-align: middle;
    }
    .num_area .detail_num span {
        font-size: 16px;
        vertical-align: middle;
    }

    .num_area .detail_num em {
        margin-top: 0;
        font-size: 16px;
    }
</style>

<body>
<%@ include file="donaing.jsp"%>


<div id="container">
    <div class="collect_wrap">
        <div class="content_content">
            <h2 class="theme"></h2>
            <h3 class="title">${viewmlrd.mlrd_ttl2}</h3>
            <%--            <ul class="collect_tab" id="collect_tab"></ul>--%>
            <div class="tab_content">
                <ul class="intro_list editor_base">
                    <li>
                        <dl>
                            <dt id="paraTitle" style="padding-bottom: 20px"><img src=${viewmlrd.mlrd_file_id} alt width="100%" height="300" class="card_img"></dt>
                            <dd id="paraContent">${viewmlrd.mlrd_cn}</dd>
                        </dl>
                    </li>
                </ul>
            </div>
        </div>

        <div class="content_side">
            <div class="section_title"><p class="tit" style="font-size: 20px">${viewmlrd.mlrd_ttl2}</p></div>
            <div class="section_status">
                <div class="graph_wrap">
                    <div class="graph_status">
                        <span class="per">
                            <strong class="num">${viewmlrd.percent}</strong>%
                        </span>
                    </div>
                </div>
                <div class="term_area">
                    <p>
                        <strong>${viewmlrd.cntr_str_dt} ~ ${viewmlrd.cntr_end_dt}</strong>
                    </p>
                </div>
                <div class="num_area">
                    <p class="status_num">
                        <strong><fmt:formatNumber value="${viewmlrd.ctbny_pc}" pattern="###,###,###"/></strong>
                        <span>원 달성</span>
                    </p>
                    <p class="detail_num">
                        <span><fmt:formatNumber value="${viewmlrd.cntr_obctr}" pattern="###,###,###"/></span>
                        <em style="font-style: inherit">원 목표</em>
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>