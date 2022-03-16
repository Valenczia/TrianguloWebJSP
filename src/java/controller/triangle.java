package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Triangle;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;

@WebServlet(name = "triangle", urlPatterns = {"/triangle"})
public class triangle extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        int base = Integer.parseInt(request.getParameter("base"));
        int heigth = Integer.parseInt(request.getParameter("heigth"));
        Cookie cBase = new Cookie("Base", request.getParameter("base"));
        response.addCookie(cBase);
        Cookie cHeigth = new Cookie("Altura", request.getParameter("heigth"));
        response.addCookie(cHeigth);
        HttpSession sesion= request.getSession(false);
        sesion.setAttribute("nombre", request.getParameter("nombre"));
        Triangle t = new Triangle(base, heigth);
        request.setAttribute("area", t.area());
        String areastring=String.valueOf(t.area());    
        Cookie cArea = new Cookie("Area", areastring);
        response.addCookie(cArea);
        String perimeterstring=String.valueOf(t.perimeter());    
        Cookie cPerimeter = new Cookie("Perimetro", perimeterstring);
        response.addCookie(cPerimeter);
        
        request.setAttribute("perimeter", t.perimeter());
        getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);
        
    }

 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
}
