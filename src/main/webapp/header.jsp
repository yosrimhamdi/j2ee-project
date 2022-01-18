<%--
  Created by IntelliJ IDEA.
  User: MHAMDI
  Date: 1/18/2022
  Time: 10:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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