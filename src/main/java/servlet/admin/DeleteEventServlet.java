package servlet.admin;

import database.DBConnection;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DeleteEventServlet", value = "/admin/events/delete")
public class DeleteEventServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        DBConnection.deleteEvent(id);

        HttpSession session = request.getSession();
        session.setAttribute("hasToastr", true);
        session.setAttribute("toastrMessage", "Event Deleted.");

        response.sendRedirect(request.getContextPath() + "/admin/events");
    }
}
