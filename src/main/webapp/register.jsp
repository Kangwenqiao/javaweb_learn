<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Result</title>
</head>
<body>
<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String password = request.getParameter("password");
    String confirm_password = request.getParameter("confirm_password");

    // 这里执行注册逻辑，比如将用户信息存储到数据库中

    // 这里只是简单的示例，可以根据实际情况修改
%>
<h2>Registration Successful</h2>
<p>Username: <%= username %></p>
<p>Email: <%= email %></p>
</body>
</html>
