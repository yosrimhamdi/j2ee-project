<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <title>New Event</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link
            rel="stylesheet"
            href="https://preview.colorlib.com/theme/services/A.fonts,,_icomoon,,_style.css+css,,_bootstrap,,_bootstrap.css+css,,_jquery-ui.css+css,,_owl.carousel.min.css+css,,_owl.theme.default.min.css+css,,_owl.theme.default.min.css+css,,_jquery.fancybox.min.css+css,,_bootstrap-datepicker.css+fonts,,_flaticon,,_font,,_flaticon.css+css,,_aos.css+css,,_style.css,Mcc.m18yuQ1D8z.css.pagespeed.cf.xwVgWePE-2.css"
    />
    <link rel="stylesheet" href="<%= request.getContextPath() %>/assets/events/css/A.style.css.pagespeed.cf.Qh1-GdQdyh.css">
</head>
<body>
<jsp:include page="../components/header.jsp" />
<section class="ftco-section">
    <div class="container" style="padding-top: 10px">
        <div class="row justify-content-center">
            <div class="col-md-12 col-lg-10">
                <div class="wrap d-md-flex">
                    <div class="img" style="background-image:url(<%= request.getContextPath() %>/assets/events/images/event.jpg)"></div>
                    <div class="login-wrap p-4 p-md-5">
                        <div class="d-flex">
                            <div class="w-100">
                                <h3 class="mb-4">Create new event!</h3>
                            </div>
                        </div>
                        <form method="post" class="signin-form">
                            <div class="form-group mb-3">
                                <label class="label" for="title">Title</label>
                                <input type="text" class="form-control" id="title" placeholder="Title" name="title" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="description">Discription</label>
                                <input type="text" class="form-control" id="description" name="description" placeholder="description" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="occursAt">Occurs at</label>
                                <input type="date" class="form-control" id="occursAt" name="occursAt" placeholder="Occurs at" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="address">Address</label>
                                <input type="text" class="form-control" id="address" name="address" placeholder="Address" required>
                            </div>
                            <div class="form-group mb-3">
                                <label class="label" for="imageUrl">Image URL</label>
                                <input type="text" class="form-control" id="imageUrl" name="imageUrl" placeholder="Image URL" required>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="form-control btn btn-primary rounded submit px-3">Create Event</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<jsp:include page="../components/footer.jsp" />
<script src="<%= request.getContextPath() %>/assets/events/js/jquery.min.js"></script>
<script src="<%= request.getContextPath() %>/assets/events/js/popper.js+bootstrap.min.js+main.js.pagespeed.jc.JD3obyg0WD.js"></script>
</body>
</html>