<%@ page import="entity.Event" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: MHAMDI
  Date: 1/18/2022
  Time: 10:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1>Hello</h1>--%>

<%--<%--%>
<%--    ArrayList<Event> events = (ArrayList<Event>)request.getAttribute("events");--%>

<%--    for(Event event : events) {--%>
<%--%>--%>
<%--        <div><%= event.getTitle() %></div>--%>
<%--<% } %>--%>
<%--</body>--%>
<%--</html>--%>
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
<div id="overlayer"></div>
<div class="loader">
    <div class="spinner-border text-primary" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
<div class="site-wrap">
    <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
            <div class="site-mobile-menu-close mt-3">
                <span class="icon-close2 js-menu-toggle"></span>
            </div>
        </div>
        <div class="site-mobile-menu-body"></div>
    </div>
    <jsp:include page="../visible-header.jsp" />
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
                                /></a>
                                <div class="p-4 bg-white">
                                    <h3>
                                        <a href="#"
                                        ><%= event.getTitle() %></a>
                                    </h3>
                                    <span class="date"><%= event.getOccursAt() %></span>
                                    <p><%= event.getDescription() %></p>
                                </div>
                            </div>
                        </div>
                <% } %>
            </div>
        </div>
    </section>
    <section class="site-section" id="contact-section">
        <div class="container">
            <div class="row">
                <div class="col-12 mb-5 position-relative">
                    <h2 class="section-title text-center mb-5">Contact Form</h2>
                </div>
            </div>
            <div class="row justify-content-between">
                <div class="col-lg-6">
                    <form action="#" class="form">
                        <div class="row mb-4">
                            <div class="form-group col-6">
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="First name"
                                />
                            </div>
                            <div class="form-group col-6">
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="Full name"
                                />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="form-group col-12">
                                <input
                                        type="email"
                                        class="form-control"
                                        placeholder="Email address"
                                />
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="form-group col-12">
                                <input
                                        type="text"
                                        class="form-control"
                                        placeholder="Subject of the message"
                                />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <input
                                        type="submit"
                                        class="btn btn-primary"
                                        value="Send Message"
                                />
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-lg-5">
                    <h3>Tunis</h3>
                    <ul class="list-unstyled mb-5">
                        <li class="mb-3">
                            <strong class="d-block mb-1">Address</strong>
                            <span>Tunis, Tunisia</span>
                        </li>
                        <li class="mb-3">
                            <strong class="d-block mb-1">Phone</strong>
                            <span>+216 232 3235 324</span>
                        </li>
                        <li class="mb-3">
                            <strong class="d-block mb-1">Email</strong>
                            <span>yosri@mhamdi.co</span>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <footer class="site-section bg-light footer">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-3">
                    <h3 class="footer-title">Services</h3>
                    <p>
                <span class="d-inline-block d-md-block"
                >203 Fake St. Mountain View,</span
                >
                        Tunis, Tunsia
                    </p>
                </div>
                <div class="col-md-5 mx-auto">
                    <div class="row">
                        <div class="col-lg-4">
                            <h3 class="footer-title">Services</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Content Marketing</a></li>
                                <li><a href="#">Brand & Logo</a></li>
                                <li><a href="#">Social Advertising</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-4">
                            <h3 class="footer-title">Resources</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Social Marketing</a></li>
                                <li><a href="#">Web Design</a></li>
                                <li><a href="#">Web Development</a></li>
                            </ul>
                        </div>
                        <div class="col-lg-4">
                            <h3 class="footer-title">Templates</h3>
                            <ul class="list-unstyled">
                                <li><a href="#">Illustration</a></li>
                                <li><a href="#">Video Editing</a></li>
                                <li><a href="#">Copywriting</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <h3 class="footer-title">Follow Me</h3>
                    <a href="#" class="social-circle m-2"
                    ><span class="icon-twitter"></span
                    ></a>
                    <a href="#" class="social-circle m-2"
                    ><span class="icon-facebook"></span
                    ></a>
                    <a href="#" class="social-circle m-2"
                    ><span class="icon-instagram"></span
                    ></a>
                    <a href="#" class="social-circle m-2"
                    ><span class="icon-dribbble"></span
                    ></a>
                    <a href="#" class="social-circle m-2"
                    ><span class="icon-linkedin"></span
                    ></a>
                </div>
            </div>
            <div class="row">
                <div class="col-12 text-center">
                    <p>
                        Copyright &copy;
                        <script>
                            document.write(new Date().getFullYear());
                        </script>
                        All rights reserved
                    </p>
                </div>
            </div>
        </div>
    </footer>
    <jsp:include page="../toastr.jsp" />
</div>
<script src="<%= request.getContextPath() %>/assets/home/js/jquery-3.3.1.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/home/js/jquery-ui.js+popper.min.js.pagespeed.jc.EX-s8Bt7Bv.js"></script>
<script>
    eval(mod_pagespeed_QsSCow0WyJ);
</script>
<script>
    eval(mod_pagespeed_AuEKrLvSdQ);
</script>
<script src="<%= request.getContextPath() %>/assets/home/js/bootstrap.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/home/js/owl.carousel.min.js+jquery.easing.1.3.js+aos.js.pagespeed.jc.xp26CxVBPW.js"></script>
<script>
    eval(mod_pagespeed_gDTfE4NB3q);
</script>
<script>
    eval(mod_pagespeed_9aYDEoroBv);
</script>
<script>
    eval(mod_pagespeed_xOR_$VeFhT);
</script>
<script src="<%= request.getContextPath() %>/assets/home/js/jquery.fancybox.min.js+jquery.sticky.js.pagespeed.jc.5hu4MLknac.js"></script>
<script>
    eval(mod_pagespeed_3ABmRtsnyn);
</script>
<script>
    eval(mod_pagespeed_c5SGAuoWdO);
</script>
<script src="<%= request.getContextPath() %>/assets/home/js/isotope.pkgd.min.js+main.js.pagespeed.jc.bGo_Uv6Ynq.js"></script>
<script>
    eval(mod_pagespeed_R8Dg4Fom58);
</script>
<script>
    eval(mod_pagespeed_eZ7_rfrXAQ);
</script>

<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());

    gtag('config', 'UA-23581568-13');
</script>
</body>
</html>


