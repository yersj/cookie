package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCookie", value = "/DeleteCookie")
public class DeleteCookie extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie personName=new Cookie("name",request.getParameter(""));
        Cookie personSurname=new Cookie("surname",request.getParameter(""));
        Cookie personCountry=new Cookie("country",request.getParameter(""));
        Cookie personPhone=new Cookie("phone",request.getParameter(""));

        personName.setMaxAge(0);
        personSurname.setMaxAge(0);
        personCountry.setMaxAge(0);
        personPhone.setMaxAge(0);

        response.addCookie(personName);
        response.addCookie(personSurname);
        response.addCookie(personCountry);
        response.addCookie(personPhone);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
