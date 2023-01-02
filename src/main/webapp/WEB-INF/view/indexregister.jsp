<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>관리자 페이지</title>
    <link rel="stylesheet" href="css/indexregister.css" />
</head>

<body>
    <%@ include file="index.jsp"%>

    <div class="wrapper">
        <form role="form" method="post" autocomplete="off">
            <div class="wrap">

            <h2>상품 등록</h2>
                <div class="user_wrap">
                    <label for="cntr_ttl">기부명</label>
                    <input class="user_input" type="text" id="cntr_ttl" name="cntr_ttl" />
                </div>

                <div class="user_wrap">
                    <label for="cntr_cn">기부내용</label>
                    <textarea class="user_input" rows="5" cols="50" id="cntr_cn" name="cntr_cn"></textarea>
                </div>

                <div class="user_wrap">
                    <label for="cntr_obctr">목표금액</label>
                    <input class="user_input" type="text" id="cntr_obctr" name="cntr_obctr" />
                </div>

                <div class="se_wrap">
                    <label for="cntr_category">기부대상</label>
                    <select class="se_input" type="text" id="cntr_category" name="cntr_category">
                        <option value="0">어린이</option>
                        <option value="1">어르신</option>
                        <option value="2">장애인</option>
                        <option value="3">동물</option>
                        <option value="4">기타</option>
                    </select>
                </div>

                <div class="button_wrap">
                    <div class="login_button_wrap">
                    <button class="login_button" type="submit" id="register_Btn">등록</button>
                    </div>
                </div>
            </div>
        </form>

    </div>

</body>
</html>

<script>
    // 컨트롤러에서 데이터 받기
    var jsonData = JSON.parse('${ctgry}');
    console.log(jsonData);

    var cate1Arr = new Array();
    var cate1Obj = new Object();

    // 1차 분류 셀렉트 박스에 삽입할 데이터 준비
    for(var i = 0; i < jsonData.length; i++) {

        if(jsonData[i].level == "1") {
            cate1Obj = new Object();  //초기화
            cate1Obj.cateCode = jsonData[i].cateCode;
            cate1Obj.cateName = jsonData[i].cateName;
            cate1Arr.push(cate1Obj);
        }
    }

    // 1차 분류 셀렉트 박스에 데이터 삽입
    var cate1Select = $("select.ctgry1")

    for(var i = 0; i < cate1Arr.length; i++) {
        cate1Select.append("<option value='" + cate1Arr[i].cateCode + "'>"
            + cate1Arr[i].cateName + "</option>");
    }

</script>
