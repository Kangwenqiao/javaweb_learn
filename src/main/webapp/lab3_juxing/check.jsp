<%@ page import="lab3.Rectangle" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String lengthStr = request.getParameter("length");
    String widthStr = request.getParameter("width");

    double length = Double.parseDouble(lengthStr);
    double width = Double.parseDouble(widthStr);

    Rectangle rectangle = new Rectangle();
    rectangle.setLength(length);
    rectangle.setWidth(width);

    double area = rectangle.getArea();

    request.setAttribute("area", area);
    request.getRequestDispatcher("suc.jsp").forward(request, response);
%>
