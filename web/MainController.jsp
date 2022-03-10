<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Calculation.Triangle" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            int base=Integer.parseInt(request.getParameter("base"));
            int heigth=Integer.parseInt(request.getParameter("heigth"));
            Triangle t = new Triangle(base, heigth);
        %>
        <p>El área es: <%= t.area() %></p>
        <p>El permímetro es: <%= t.perimeter() %></p>
    </body>
</html>
