<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Login</title>
</head>
<body>
	<div style="float: none; margin: 0 auto;">
        <h1>Login</h1>
        <form action="/user/login2" name="LoginForm" method="post">
<!--         http://localhost:8081/controller/user/controller/user/login2 -->

<!-- http://localhost:8081/user/login2 -->

            <h1>ID  어어어</h1>
            <input type="text" required name="id">
            <h1>PW  히히</h1>
            <input type="password" required name="pw">
            <button type="submit">Login</button>
        </form>
        <button type="button" onclick="location.href='/user/joinPage'">Join</button>
        <button type="button" onclick="location.href='/user/findPage'">Find 
            Id/Pw</button>
        <button type="button" onclick="location.href='/board/index'">Main</button>
    </div>
</body>
</html>