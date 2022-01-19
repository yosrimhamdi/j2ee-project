package servlet;

import database.DBConnection;
import entity.User;

import javax.persistence.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher view = request.getRequestDispatcher("authentication/login.jsp");
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = DBConnection.login(email, password);

        if (user != null) {
            req.setAttribute("error", "wrong credentials");

            RequestDispatcher view = req.getRequestDispatcher("authentication/login.jsp");
            view.forward(req, resp);

            return;
        }

        resp.sendRedirect(req.getContextPath());
    }
}
