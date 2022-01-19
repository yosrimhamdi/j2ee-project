package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

import database.DBConnection;
import entity.Event;

@WebServlet(name = "EventShowServlet", value = "/events")
public class EventServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Event> events = DBConnection.findEvents();

        request.setAttribute("events", events);

        RequestDispatcher view = request.getRequestDispatcher("events/index.jsp");
        view.forward(request, response);
    }
}
