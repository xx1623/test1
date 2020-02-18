package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "check_servlet")
public class check_servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = null;
        String pwd = null;
        id = request.getParameter("id");
        pwd = request.getParameter("pwd");
        if(id==null || pwd==null || id=="" || pwd=="" || !id.equals("admin") || !pwd.equals("123")){
            response.sendRedirect("login_fail.jsp");
            return;
        }
        else if(id.equals("admin") && pwd.equals("123")){
            response.sendRedirect("login_suc.jsp");
            return;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}

