<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.triangle"%>
<%Cookie uiColorCookie = new Cookie("color", "red");
response.addCookie(uiColorCookie);%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora Triángulo Equilátero (Con Servlet)</title>
    </head>
    <body>
        <h1>Calculadora Triángulo Equilátero (Con Servlet)</h1>
        <form action="triangle" method="post">
            <label for="base">Base:</label><br>
            <input type="number" id="base" name="base" value=""><br>
            <label for="heigth">Altura:</label><br>
            <input type="number" id="base" name="heigth"><br><br>
            <input type="submit" id="base" name="submit"><br>
        </form>
    </body>
</html>
