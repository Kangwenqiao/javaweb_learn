<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.DecimalFormat" %>
<html>
<head>
  <title>Rectangle Calculation Result</title>
</head>
<body>
<h1>Rectangle Calculation Result</h1>
<%-- 获取用户输入 --%>
<% String lengthStr = request.getParameter("length");
  String widthStr = request.getParameter("width");

  double length = Double.parseDouble(lengthStr);
  double width = Double.parseDouble(widthStr);

  double area = length * width;
  double perimeter = 2 * (length + width);

  DecimalFormat df = new DecimalFormat("#.##");
%>
<%-- 显示计算结果 --%>
<p>Length: <%= df.format(length) %></p>
<p>Width: <%= df.format(width) %></p>
<p>Area: <%= df.format(area) %></p>
<p>Perimeter: <%= df.format(perimeter) %></p>
</body>
</html>
