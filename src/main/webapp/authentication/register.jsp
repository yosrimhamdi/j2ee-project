<!doctype html>
<html lang="en">
<head>
    <title>Register</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link
            rel="stylesheet"
            href="https://preview.colorlib.com/theme/services/A.fonts,,_icomoon,,_style.css+css,,_bootstrap,,_bootstrap.css+css,,_jquery-ui.css+css,,_owl.carousel.min.css+css,,_owl.theme.default.min.css+css,,_owl.theme.default.min.css+css,,_jquery.fancybox.min.css+css,,_bootstrap-datepicker.css+fonts,,_flaticon,,_font,,_flaticon.css+css,,_aos.css+css,,_style.css,Mcc.m18yuQ1D8z.css.pagespeed.cf.xwVgWePE-2.css"
    />
    <link rel="stylesheet" href="assets/login/css/A.style.css.pagespeed.cf.AxmTFBrhes.css">
</head>
<body>
<jsp:include page="../visible-header.jsp" />
<section class="ftco-section" style="padding: 2em">
    <div class="container" style="padding-top: 90px">
        <div class="row justify-content-center">
            <div class="col-md-7 col-lg-5">
                <div class="wrap">
                    <div class="img" style="background-image:url(assets/login/images/trees.jpg)"></div>
                    <div class="login-wrap p-4 p-md-5">
                        <div class="d-flex">
                            <div class="w-100">
                                <h3 class="mb-4">Register</h3>
                            </div>
                        </div>
                        <form action="register" method="post" class="signin-form">
                            <div class="form-group mt-3">
                                <input type="email" class="form-control" id="email" name="email" required>
                                <label class="form-control-placeholder" for="email">Email</label>
                            </div>
                            <div class="form-group mt-3">
                                <input type="text" class="form-control" name="firstName" id="firstName" required>
                                <label class="form-control-placeholder" for="firstName">firstName</label>
                            </div>
                            <div class="form-group mt-3">
                                <input type="text" class="form-control" name="lastName" id="lastName" required>
                                <label class="form-control-placeholder" for="lastName">LastName</label>
                            </div>
                            <div class="form-group">
                                <input id="password-field" type="password" id="password" name="password" class="form-control" required>
                                <label class="form-control-placeholder" for="password">Password</label>
                                <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <input id="password-confirm" type="password" id="password-confirm" name="passwordConfirm" class="form-control" required>
                                <label class="form-control-placeholder" for="password">Password Confirm</label>
                                <span toggle="#password-field" class="fa fa-fw fa-eye field-icon toggle-password"></span>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-primary rounded submit px-3">Register</button>
                            </div>
                        </form>
                        <p class="text-center">Already a member? <a data-toggle="tab" href="login">Login</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="../components/footer.jsp" />
<script src="assets/login/js/jquery.min.js"></script>
<script src="assets/login/js/popper.js+bootstrap.min.js+main.js.pagespeed.jc.3YxqA_kpjO.js">
    <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v652eace1692a40cfa3763df669d7439c1639079717194" integrity="sha512-Gi7xpJR8tSkrpF7aordPZQlW2DLtzUlZcumS8dMQjwDHEnw9I7ZLyiOj/6tZStRBGtGgN6ceN6cMH8z7etPGlw==" data-cf-beacon='{"rayId":"6cf1d88fec17c00c","token":"cd0b4b3a733644fc843ef0b185f98241","version":"2021.12.0","si":100}' crossorigin="anonymous"></script>
</body>
</html>