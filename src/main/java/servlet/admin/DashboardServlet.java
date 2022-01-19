package servlet.admin;

import database.DBConnection;
import entity.Event;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "EventDashboardServlet", value = "/admin/dashboard")
public class DashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Event> events = DBConnection.findEvents();

        request.setAttribute("events", events);

        RequestDispatcher view = request.getRequestDispatcher("/events/dashboard.jsp");
        view.forward(request, response);
    }
}
