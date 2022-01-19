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

        EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("default");
        EntityManager entityManager = entityManagerFactory.createEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();

        try {
            transaction.begin();

            PrintWriter out = resp.getWriter();

            Query query = entityManager.createQuery("SELECT e FROM User e WHERE e.email = :email and e.password = :password");
            query.setParameter("email", email);
            query.setParameter("password", password);
            List<User> users = query.getResultList();

            if (users.size() == 0) {
                req.setAttribute("error", "wrong credentials");

                RequestDispatcher view = req.getRequestDispatcher("authentication/login.jsp");
                view.forward(req, resp);
            }

            resp.sendRedirect(req.getContextPath());

            transaction.commit();
        } finally {
            if (transaction.isActive()) {
                transaction.rollback();
            }

            entityManager.close();
            entityManagerFactory.close();
        }
    }
}
