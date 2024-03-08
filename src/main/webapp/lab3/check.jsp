<%@ page import="lab3.User" %>
<%@ page import="lab3.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    User user = new User();
    user.setUsername(username);
    user.setPassword(password);

    if(user.validate()) {
        session.setAttribute("username", username);
        response.sendRedirect("suc.jsp");
    } else {
        out.println("<script type=\"text/javascript\">");
        out.println("alert('User or password incorrect');");
        out.println("location='index.jsp';");
        out.println("</script>");
    }
%>
