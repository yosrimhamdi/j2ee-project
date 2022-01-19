package servlet.admin;

import database.DBConnection;
import entity.Event;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "AdminEventServlet", value = "/admin/events/new")
public class NewEventServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher view = req.getRequestDispatcher("../../events/new.jsp");
        view.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String occursAt = request.getParameter("occursAt");
        String address = request.getParameter("address");
        String imageUrl = request.getParameter("imageUrl");

        Event event = new Event();
        event.setTitle(title);
        event.setDescription(description);
        event.setAddress(address);
        event.setImageUrl(imageUrl);
        event.setOccursAt(Date.valueOf(occursAt));

        DBConnection.createEvent(event);

        HttpSession session = request.getSession();

        session.setAttribute("hasToastr", true);
        session.setAttribute("toastrMessage", "Event created.");

        response.sendRedirect(request.getContextPath() + "/admin/events");
    }
}
