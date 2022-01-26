package servlets;

import model.Translations;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "rus", value = "/rus")
public class rus extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie rus=new Cookie("lang", "rus");
        rus.setMaxAge(30*24*60*60);
        response.addCookie(rus);
        response.sendRedirect("/last");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {





        request.getRequestDispatcher("/index.jsp").forward(request,response);










    }
}
