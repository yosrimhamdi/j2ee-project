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
            <div class="row">
                <div class="col-12 mb-5 position-relative">
                    <h2 class="section-title text-center mb-5">Events Catalog</h2>
                </div>
                <%
                    ArrayList<Event> events = (ArrayList<Event>)request.getAttribute("events");

                    for(Event event : events) {
                %>
                        <div class="col-md-6 mb-5 mb-lg-0 col-lg-4">
                            <div class="blog_entry mb-3">
                                <a href="#"
                                ><img
                                        src="<%= event.getImageUrl() %>"
                                        alt="Image"
                                        class="img-fluid"
                                        style="width: 350px; height: 200px; object-fit: cover;"
                                /></a>
                                <div class="p-4 bg-white">
                                    <h3>
                                        <a href="#"
                                        ><%= event.getTitle() %></a>
                                    </h3>
                                    <span class="date" ><%= event.getAddress() %></span>
                                    <span class="date" style="margin-top: -1em"><%= event.getOccursAt() %></span>
                                    <p><%= event.getDescription() %></p>
                                </div>
                            </div>
                        </div>
                <% } %>
            </div>
        </div>
    </section>
    <jsp:include page="../components/footer.jsp" />
    <jsp:include page="../components/toastr.jsp" />
</div>
</body>
</html>


