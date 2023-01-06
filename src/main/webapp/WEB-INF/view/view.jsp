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
        padding-top: 24px;
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




</style>

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

                    <%--! 여기서 늘리면됨 --%>
<%--                    <li>--%>
<%--                        <dl>--%>
<%--                            <dt id="paraTitle">소제목</dt>--%>
<%--                            <dd id="paraContent">${view.cntr_cn}</dd>--%>
<%--                        </dl>--%>
<%--                    </li>--%>
                </ul>
            </div>
        </div>

<style>

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


</style>

        <div class="content_side">
            <div class="section_title"><p class="tit" style="font-size: 20px">${view.cntr_ttl}</p></div>
<%--            <div class="section_title">${view2.ctbny_pc} / ${view.cntr_obctr} 원</div>--%>
            <div class="section_status">
                <div class="graph_wrap">
                    <div class="graph_status">
                        <span class="per">
                            <strong class="num"> </strong>%
                        </span>
                    </div>
                </div>
                <div class="term_area">
                    <p>
                        <strong>${view.cntr_str_dt} ~ ${view.cntr_end_dt}</strong>
                    </p>
                </div>
                <div class="num_area"></div>
            </div>

            <div class="section_btn"><a href='/viewinputdona?n=${view.cntr_sn}' class="bt donate jq_donate" data-google="모금함_View" data-stat="기부하기_상단_BTN_CLK" >모금함 기부하기</a> </div>
        </div>
    </div>
</div>

</body>
</html>