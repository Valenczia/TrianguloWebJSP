<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controller.triangle"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora Triángulo Equilátero (Con Servlet)</title>
    </head>
    <body>
        <%
            HttpSession sesion=request.getSession(false);
            Enumeration e=sesion.getAttributeNames();
            if(e.hasMoreElements())
            {
                out.print("Tu nombre es: ");
                out.print(sesion.getAttribute("nombre"));
            }     
        %>
        <%
          Cookie ck[]=request.getCookies();
          if(ck!=null)
          {
              for(int i=0;i<ck.length;i++)
              {
                 if(ck[i].getName().equals("JSESSIONID"))
                 {
                      
                 }else {
                    out.print("<br>Tu "+ck[i].getName()+" anterior fue: "+ck[i].getValue()+"");
                 }  
              }
          }
        %>        
        <h1>Calculadora Triángulo Equilátero (Con Servlet)</h1>
        <form action="triangle" method="post">
            <label for="name">Nombre:</label><br>
            <input type="text" id="base" name="nombre" value=""><br>
            <label for="base">Base:</label><br>
            <input type="number" id="base" name="base" value=""><br>
            <label for="heigth">Altura:</label><br>
            <input type="number" id="base" name="heigth"><br><br>
            <input type="submit" id="base" name="submit"><br>
        </form>
    </body>
</html>
