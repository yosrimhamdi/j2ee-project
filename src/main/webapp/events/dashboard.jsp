<%@ page import="entity.Event" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Eventify</title>
    <meta charset="utf-8" />
    <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
            href="https://fonts.googleapis.com/css2?family=Jost:wght@400;700;900&display=swap"
            rel="stylesheet"
    />
    <link
            rel="stylesheet"
            href="https://preview.colorlib.com/theme/services/A.fonts,,_icomoon,,_style.css+css,,_bootstrap,,_bootstrap.css+css,,_jquery-ui.css+css,,_owl.carousel.min.css+css,,_owl.theme.default.min.css+css,,_owl.theme.default.min.css+css,,_jquery.fancybox.min.css+css,,_bootstrap-datepicker.css+fonts,,_flaticon,,_font,,_flaticon.css+css,,_aos.css+css,,_style.css,Mcc.m18yuQ1D8z.css.pagespeed.cf.xwVgWePE-2.css"
    />
    <style>
        .button {
            color: #fff;
            background-color: #007bff;
            display: inline-block;
            font-weight: 400;
            text-align: center;
            white-space: nowrap;
            vertical-align: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            border: 1px solid transparent;
            padding: 0.375rem 0.75rem;
            font-size: 1rem;
            line-height: 1.5;
            border-radius: 0.25rem;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
        }

        .button:hover {
            background-color: #0069d9;
            color: white !important;
        }

        .red {
            background-color: #dc3545
        }

        .red:hover {
            background-color: #c82333;
            color: white !important;
        }

        .green {
            background-color: #28a745;
        }

        .green:hover {
            background-color: #218838;
            color: white;
        }
    </style>
</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
<div class="site-wrap">
    <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
                <span class="icon-close2 js-menu-toggle"></span>
            </div>
        </div>
        <div class="site-mobile-menu-body"></div>
    </div>
    <jsp:include page="../components/visible-header.jsp" />
    <section class="site-section bg-light" id="blog-section">
        <div class="container">
            <div class="col-12 mb-5 position-relative">
                <h2 class="section-title text-center mb-5">Event Manager</h2>
            </div>
            <div style="text-align: right;">
                <a href="<%= request.getContextPath() %>/admin/events/new" type="button" class="button green" style="margin-bottom: 2em; margin-right: 1.6em;">New Event</a>
            </div>
            <table class="table table-dark">
                <thead>
                    <tr>
                        <th scope="col">Image</th>
                        <th scope="col">Title</th>
                        <th scope="col">Description</th>
                        <th scope="col">occurs at</th>
                        <th scope="col">address</th>
                        <th scope="col">actions</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList<Event> events = (ArrayList<Event>)request.getAttribute("events");

                        for(Event event : events) {
                    %>
                        <tr>
                            <td><img style="width: 60px" src="<%= event.getImageUrl() %>" alt="event image"/></td>
                            <td><%= event.getTitle() %></td>
                            <td>
                                <% if (event.getDescription().length() > 23) {%>
                                    <%= event.getDescription().substring(0, 20) + "..." %>
                                <% } %>
                            </td>
                            <td><%= event.getAddress() %></td>
                            <td><%= event.getOccursAt() %></td>
                            <td>
                                <a href="<%= request.getContextPath() %>/admin/events/edit?id=<%= event.getId() %>" type="button" class="button">Update</a>
                                <a href="<%= request.getContextPath() %>/admin/events/delete?id=<%= event.getId() %>" type="button" class="button red" onclick="confirm('Are you sure you want to delete this event?');">Delete</a>
                            </td>
                         </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </section>
    <jsp:include page="../components/footer.jsp" />
    <jsp:include page="../components/toastr.jsp" />
</div>
</body>
</html>


