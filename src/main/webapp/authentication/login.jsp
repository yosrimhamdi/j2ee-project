<%--
  Created by IntelliJ IDEA.
  User: MHAMDI
  Date: 1/17/2022
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/login/css/A.style.css.pagespeed.cf.AxmTFBrhes.css">
</head>
<body>
<section class="ftco-section" style="padding: 2em">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-7 col-lg-5">
                <div class="wrap">
                    <div class="img" style="background-image:url(assets/login/images/xbg-1.jpg.pagespeed.ic.EtoN2PmO7Y.webp)"></div>
                    <div class="login-wrap p-4 p-md-5">
                        <div class="d-flex">
                            <div class="w-100">
                                <h3 class="mb-4">Login</h3>
                            </div>
                        </div>
                        <form action="login" method="post" class="signin-form">
                            <div class="form-group mt-3">
                                <input type="text" class="form-control" id="email" name="email" required>
                                <label class="form-control-placeholder" for="email">Email</label>
                            </div>
                            <div class="form-group">
                                <input id="password-field" type="password" id="password" name="password" class="form-control" required>
                                <label class="form-control-placeholder" for="password">Password</label>
                                <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                            </div>
                            <% if (((String) request.getAttribute("error")) == "wrong credentials") { %>
                                <div class="text-danger mb-3" style="margin-top: -1em;">
                                    Wrong credentials.
                                </div>
                            <% } %>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-primary rounded submit px-3">Login</button>
                            </div>
                            <div class="form-group d-md-flex">
                                <div class="w-50 text-left">
                                    <label class="checkbox-wrap checkbox-primary mb-0">Remember Me
                                        <input type="checkbox" checked>
                                        <span class="checkmark"></span>
                                    </label>
                                </div>
                                <div class="w-50 text-md-right">
                                    <a href="#">Forgot Password</a>
                                </div>
                            </div>
                        </form>
                        <p class="text-center">Not a member? <a data-toggle="tab" href="register">Register</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<script src="<%= request.getContextPath() %>/assets/login/js/jquery.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/login/js/popper.js+bootstrap.min.js+main.js.pagespeed.jc.3YxqA_kpjO.js">
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon='{"rayId":"6cf1d88fec17c00c","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.12.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>