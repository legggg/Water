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
            <div>
                <h3>로그인 페이지</h3>
            </div>
            <div>
                <label>아이디</label>
                <input type="text" name="mbr_id" placeholder="username" required>
            </div>
            <div>
                <label>비밀번호</label>
                <input type="password" name="password" placeholder="password" required>
            </div>
            <div>
                <button type="submit">로그인</button>
                <a href="/signup" class="btn btn-white btn-outline-white">회원가입</a>
                <span style="color: red;">${message}</span>
            </div>
        </form>

    </body>
</html>