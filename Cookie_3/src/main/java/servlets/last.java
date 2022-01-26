package servlets;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "last", value = "/last")
public class last extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cookie[] cookies= request.getCookies();
        String lang="";
        for(Cookie cookie:cookies){

            if(cookie.getValue().equals("rus")){
                lang=cookie.getValue();
            }else if(cookie.getValue().equals("eng")){
                lang=cookie.getValue();
            }

        }



        request.setAttribute("language",lang);
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
