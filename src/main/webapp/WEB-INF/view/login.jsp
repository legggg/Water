<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>로그인</title>
    </head>

    <body>
        <form action="/login" method="post">
            <form action="#" class="signin-form">
                <div>
                    <h3>로그인 페이지</h3>
                </div>
                <div>
                    <label>아이디</label>
                    <input type="text" name="mbr_id" placeholder="아이디" required>
                </div>
                <div>
                    <label>비밀번호</label>
                    <input type="password" name="mbr_password" placeholder="비밀번호" required>
                </div>
                <div>
                    <button type="submit">로그인</button>
                    <a href="/signup">회원가입</a>
                    <span style="color: red;">${message}</span>
                </div>
            </form>
        </form>

    </body>
</html>