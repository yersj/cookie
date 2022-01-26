package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Main", value = "/main")
public class Main extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies=request.getCookies();
        String personName="";
        String personSurname="";
        String personCountry="";
        String personPhone="";
        String siteName="";
        for(Cookie cookie:cookies){
            switch (cookie.getName()){
                case "name":
                    personName=cookie.getValue();
                    break;
                case "surname":
                    personSurname=cookie.getValue();
                    break;
                case "country":
                    personCountry=cookie.getValue();
                    break;
                case "phone":
                    personPhone=cookie.getValue();
                    break;
                case "siteName":
                    siteName=cookie.getValue();
                    break;

                default:
                    break;
            }
        }

        request.setAttribute("name",personName);
        request.setAttribute("surname",personSurname);
        request.setAttribute("country",personCountry);
        request.setAttribute("phone",personPhone);
        request.setAttribute("siteName",siteName);



        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     Cookie personName=new Cookie("name",request.getParameter("personName"));
     Cookie personSurname=new Cookie("surname",request.getParameter("personSurname"));
     Cookie personCountry=new Cookie("country",request.getParameter("personCountry"));
     Cookie personPhone=new Cookie("phone",request.getParameter("personPhone"));
     Cookie siteName=new Cookie("siteName",request.getParameter("siteName"));

     personName.setMaxAge(30*24*60*60);
     personSurname.setMaxAge(30*24*60*60);
     personCountry.setMaxAge(30*24*60*60);
     personPhone.setMaxAge(30*24*60*60);
     siteName.setMaxAge(30*24*60*60);


     response.addCookie(personName);
     response.addCookie(personSurname);
     response.addCookie(personCountry);
     response.addCookie(personPhone);
     response.addCookie(siteName);

     response.sendRedirect("/main");


    }
}
