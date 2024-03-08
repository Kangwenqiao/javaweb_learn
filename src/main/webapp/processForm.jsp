<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>表单提交结果</title>
</head>
<body>
<h2>提交的表单数据如下：</h2>
<p>用户名: <%= request.getParameter("username") != null ? request.getParameter("username") : "未提供" %></p>
<p>密码: <%= request.getParameter("password") != null ? request.getParameter("password") : "未提供" %></p>
<p>职业: <%= request.getParameter("occupation") != null ? request.getParameter("occupation") : "未提供" %></p>
<p>爱好:
    <%
        String[] hobbies = request.getParameterValues("hobby");
        if (hobbies != null && hobbies.length > 0) {
            for(int i = 0; i < hobbies.length; i++) {
                out.print(hobbies[i]);
                if(i < hobbies.length - 1) {
                    out.print(", ");
                }
            }
        } else {
            out.print("未提供");
        }
    %>
</p>
<p>留言: <%= request.getParameter("message") != null ? request.getParameter("message") : "未提供" %></p>
<p>首选电子邮件服务: <%= request.getParameter("emailService") != null ? request.getParameter("emailService") : "未提供" %></p>
</body>
</html>
