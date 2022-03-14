<%-- 
    Document   : result
    Created on : Mar 14, 2022, 5:22:04 PM
    Author     : davidvalencia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>El Area es:</h2>
        <p>Area: <% out.println(request.getAttribute("area")); %></p>
         <h2>El Perimetro es:</h2>
        <p>Perimetro: <% out.println(request.getAttribute("perimeter")); %></p>
        
    </body>
</html>
