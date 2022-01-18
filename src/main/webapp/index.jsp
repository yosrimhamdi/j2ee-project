<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Services Free Template by Colorlib</title>
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
    <header
            class="site-navbar py-4 js-sticky-header site-navbar-target"
            role="banner"
    >
        <div class="container">
            <div class="row align-items-center justify-content-center">
                <div class="col-4">
                    <h1 class="m-0 site-logo"><a href="<%= request.getContextPath() %>/">Eventify</a></h1>
                </div>
                <div class="col-8">
                    <nav
                            class="site-navigation position-relative text-right"
                            role="navigation"
                    >
                        <ul
                                class="
                    site-menu
                    main-menu
                    js-clone-nav
                    mr-auto
                    d-none d-lg-block
                  "
                        >
                            <li><a href="#about-section" class="nav-link">About</a></li>
                            <li>
                                <a href="#blog-section" class="nav-link">Recent Events</a>
                            </li>
                            <li>
                                <a href="#contact-section" class="nav-link">Contact</a>
                            </li>
                            <li>
                                <a href="<%= request.getContextPath() %>/login" class="nav-link">Login</a>
                            </li>
                            <li>
                                <a href="<%= request.getContextPath() %>/register" class="nav-link">Register</a>
                            </li>
                            <li>
                                <a href="<%= request.getContextPath() %>/admin/events/new" class="nav-link">Create new event</a>
                            </li>
                        </ul>
                    </nav>
                    <a
                            href="#"
                            class="
                  d-inline-block d-lg-none
                  site-menu-toggle
                  js-menu-toggle
                  float-right
                "
                    ><span class="icon-menu h3"></span
                    ></a>
                </div>
            </div>
        </div>
    </header>
    <div
            class="site-blocks-cover overlay bg-light"
            style="background-image: url(<%= request.getContextPath() %>/assets/home/images/test.jpg)"
            id="home-section"
    >
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 text-center align-self-center text-intro">
                    <div class="row justify-content-center">
                        <div class="col-lg-8">
                            <h1 class="text-white" data-aos="fade-up" data-aos-delay="">
                                We Are Digital Services
                            </h1>
                            <p
                                    class="lead text-white"
                                    data-aos="fade-up"
                                    data-aos-delay="100"
                            >
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Dignissimos magnam maxime voluptates libero, nobis impedit
                                aut corrupti sunt possimus.
                            </p>
                            <p data-aos="fade-up" data-aos-delay="200">
                                <a
                                        href="#services-section"
                                        class="btn smoothscroll btn-primary"
                                >View all events</a
                                >
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-section" id="about-section">
        <div class="container">
            <div class="row">
                <div class="col-12 mb-4 position-relative">
                    <h2 class="section-title">About Us</h2>
                </div>
                <div class="col-lg-4">
                    <p>
                        Even the all-powerful Pointing has no control about the blind
                        texts it is an almost unorthographic life One day however a
                        small line of blind text by the name of Lorem Ipsum decided to
                        leave for the far World of Grammar.
                    </p>
                    <p>
                        The Big Oxmox advised her not to do so, because there were
                        thousands of bad Commas, wild Question Marks and devious
                        Semikoli, but the Little Blind Text didn’t listen.
                    </p>
                </div>
                <div class="col-lg-4">
                    <img
                            src="<%= request.getContextPath() %>/assets/home/images/xabout.jpg.pagespeed.ic.Mpzqa4SRp_.webp"
                            alt="Image"
                            class="img-fluid"
                    />
                </div>
                <div class="col-lg-4">
                    <p>
                        Even the all-powerful Pointing has no control about the blind
                        texts it is an almost unorthographic life One day however a
                        small line of blind text by the name of Lorem Ipsum decided to
                        leave for the far World of Grammar.
                    </p>
                    <p>
                        The Big Oxmox advised her not to do so, because there were
                        thousands of bad Commas, wild Question Marks and devious
                        Semikoli, but the Little Blind Text didn’t listen.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <section class="site-section bg-primary">
        <div class="container">
            <div class="row">
                <div class="col-12 mb-5 position-relative">
                    <h2 class="section-title text-center mb-5 text-white">
                        Top Reviews
                    </h2>
                </div>
            </div>
            <div class="owl-carousel slide-one-item">
                <div class="slide">
                    <blockquote>
                        <p>
                            Far far away, behind the word mountains, far from the
                            countries Vokalia and Consonantia, there live the blind texts.
                            Separated they live in Bookmarksgrove right at the coast of
                            the Semantics, a large language ocean.
                        </p>
                        <p><cite>&mdash; Jean Smith</cite></p>
                    </blockquote>
                </div>
                <div class="slide">
                    <blockquote>
                        <p>
                            A small river named Duden flows by their place and supplies it
                            with the necessary regelialia. It is a paradisematic country,
                            in which roasted parts of sentences fly into your mouth.
                        </p>
                        <p><cite>&mdash; Carl Spencer</cite></p>
                    </blockquote>
                </div>
                <div class="slide">
                    <blockquote>
                        <p>
                            Even the all-powerful Pointing has no control about the blind
                            texts it is an almost unorthographic life One day however a
                            small line of blind text by the name of Lorem Ipsum decided to
                            leave for the far World of Grammar.
                        </p>
                        <p><cite>&mdash; Ryan Peters</cite></p>
                    </blockquote>
                </div>
            </div>
        </div>
    </section>
    <section class="site-section bg-light" id="blog-section">
        <div class="container">
            <div class="row">
                <div class="col-12 mb-5 position-relative">
                    <h2 class="section-title text-center mb-5">Recent Events</h2>
                </div>
                <div class="col-md-6 mb-5 mb-lg-0 col-lg-4">
                    <div class="blog_entry">
                        <a href="single.html"
                        ><img
                                src="<%= request.getContextPath() %>/assets/home/images/xblog_1.jpg.pagespeed.ic.WLD6viXDfY.webp"
                                alt="Image"
                                class="img-fluid"
                        /></a>
                        <div class="p-4 bg-white">
                            <h3>
                                <a href="single.html"
                                >A small river named Duden flows by their place</a
                                >
                            </h3>
                            <span class="date">April 25, 2019</span>
                            <p>
                                A small river named Duden flows by their place and supplies
                                it with the necessary regelialia.
                            </p>
                            <p class="more"><a href="single.html">Read More</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-5 mb-lg-0 col-lg-4">
                    <div class="blog_entry">
                        <a href="single.html"
                        ><img
                                src="<%= request.getContextPath() %>/assets/home/images/xblog_2.jpg.pagespeed.ic.ptXHLVkjoQ.webp"
                                alt="Image"
                                class="img-fluid"
                        /></a>
                        <div class="p-4 bg-white">
                            <h3>
                                <a href="single.html"
                                >A small river named Duden flows by their place</a
                                >
                            </h3>
                            <span class="date">April 25, 2019</span>
                            <p>
                                A small river named Duden flows by their place and supplies
                                it with the necessary regelialia.
                            </p>
                            <p class="more"><a href="single.html">Read More</a></p>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mb-5 mb-lg-0 col-lg-4">
                    <div class="blog_entry">
                        <a href="single.html"
                        ><img
                                src="<%= request.getContextPath() %>/assets/home/images/xblog_3.jpg.pagespeed.ic.BvJAi3W9-D.webp"
                                alt="Image"
                                class="img-fluid"
                        /></a>
                        <div class="p-4 bg-white">
                            <h3>
                                <a href="single.html"
                                >A small river named Duden flows by their place</a
                                >
                            </h3>
                            <span class="date">April 25, 2019</span>
                            <p>
                                A small river named Duden flows by their place and supplies
                                it with the necessary regelialia.
                            </p>
                            <p class="more"><a href="single.html">Read More</a></p>
                        </div>
                    </div>
                </div>
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
