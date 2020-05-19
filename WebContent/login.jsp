<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>login</title>
    <link rel="stylesheet" href="css/login.css">
    <script src="js/jquery-3.4.1.min.js"></script>
</head>
<body id="backg">
    <div id="login-bc">
       <div id="login">
        <h1>公司人事管理系统</h1>
        <form action="LoginServlet" method="post">
            <input type="text" name="eid" id="username" placeholder="管理员账号">
            <input type="password" name="password" id="password" placeholder="密码">
            <button type="submit" id="log">登录</button>
        </form>
       </div>
    </div>
</body>
</html>