package servlet.admin;

import database.DBConnection;
import entity.Event;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "EditEventServlet", value = "/admin/events/edit")
public class EditEventServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Event event = DBConnection.findEvent(request.getParameter("id"));

        request.setAttribute("event", event);

        RequestDispatcher view = request.getRequestDispatcher("/events/edit.jsp");
        view.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        String occursAt = request.getParameter("occursAt");
        String address = request.getParameter("address");
        String imageUrl = request.getParameter("imageUrl");

        Event event = new Event();
        event.setId(id);
        event.setTitle(title);
        event.setDescription(description);
        event.setAddress(address);
        event.setImageUrl(imageUrl);
        event.setOccursAt(Date.valueOf(occursAt));

        DBConnection.updateEvent(event);

        HttpSession session = request.getSession();
        session.setAttribute("hasToastr", true);
        session.setAttribute("toastrMessage", "Event Updated.");

        response.sendRedirect(request.getContextPath() + "/admin/dashboard");
    }
}
