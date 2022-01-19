<div id="sticky-wrapper" class="sticky-wrapper is-sticky" style="height: 79.6719px;"><header class="site-navbar py-4 js-sticky-header site-navbar-target shrink" role="banner" style="width: 1349px; position: fixed; top: 0px; z-index: inherit;">
    <div class="container">
        <div class="row align-items-center justify-content-center">
            <div class="col-4">
                <h1 class="m-0 site-logo"><a href="/j2ee_project_war_exploded/">Eventify</a></h1>
            </div>
            <div class="col-8">
                <nav class="site-navigation position-relative text-right" role="navigation">
                    <ul class="
                            site-menu
                            main-menu
                            js-clone-nav
                            mr-auto
                            d-none d-lg-block
                          ">
                        <li>
                            <a href="<%= request.getContextPath() %>/events" class="nav-link">Events Catalog</a>
                        </li>
                        <% session = request.getSession(false); %>
                        <% if (session.getAttribute("email") == null) { %>
                            <li>
                                <a href="<%= request.getContextPath() %>/login" class="nav-link">Login</a>
                            </li>
                            <li>
                                <a href="<%= request.getContextPath() %>/register" class="nav-link">Register</a>
                            </li>
                        <% } else { %>
                            <li>
                                <a href="<%= request.getContextPath() %>/admin/dashboard" class="nav-link">Events dashboard</a>
                            </li>
                            <li>
                                <a href="<%= request.getContextPath() %>/logout" class="nav-link">Logout</a>
                            </li>
                        <% } %>
                    </ul>
                </nav>
                <a href="#" class="
                          d-inline-block d-lg-none
                          site-menu-toggle
                          js-menu-toggle
                          float-right
                        "><span class="icon-menu h3"></span></a>
            </div>
        </div>
    </div>
</header></div>