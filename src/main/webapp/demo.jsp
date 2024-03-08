<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP内置对象演示</title>
</head>
<body>
<h1>欢迎使用JSP内置对象演示</h1>
<h2>请求信息</h2>
<p>请求的URI: <%= request.getRequestURI() %></p>
<p>请求方法: <%= request.getMethod() %></p>
<p>客户端地址: <%= request.getRemoteAddr() %></p>

<h2>会话信息</h2>
<p>会话ID: <%= session.getId() %></p>
<p>会话创建时间: <%= new Date(session.getCreationTime()) %></p>
<p>会话最后访问时间: <%= new Date(session.getLastAccessedTime()) %></p>

<h2>应用上下文信息</h2>
<p>应用路径: <%= application.getContextPath() %></p>
<p>服务器信息: <%= application.getServerInfo() %></p>

<h2>Servlet配置信息</h2>
<p>Servlet名称: <%= config.getServletName() %></p>

<%-- 使用out对象直接写入内容到响应 --%>
<%
    out.println("<h3>直接使用out对象输出到页面</h3>");
    out.println("<p>这是一个通过JspWriter对象输出的示例文本。</p>");
%>

</body>
</html>
