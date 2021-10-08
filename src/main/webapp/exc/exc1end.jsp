<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Murach's Java Servlet and JSP</title>
        <meta charset="UTF-8">
		<link rel="stylesheet" href="style/main.css" type="text/css"/>
    </head>
    <body>


    <div class="container-contact100">
        <div class="wrap-contact100">
            <form class="contact100-form validate-form">
                <span class="contact100-form-title">
                        Thanks for joining our email list

                    </span>
                <h4> Here is the information that you enter</h4>



                <div class="show-info">
                    <div class="full-name">
                        <span style="margin-right: 10px;">First name:</span> <span class="info-name">Son</span>
                        <span style="margin-left: 10px;">Last name:</span> <span class="info-name">Van</span> <br>
                    </div>
                    <span>Email:</span> <span class="info-name">son17112001@gmail.com</span> <br>



                </div>

                <div class="container-contact100-form-btn">
                    <div class="wrap-contact100-form-btn">
                        <div class="contact100-form-bgbtn"></div>
                        <button class="contact100-form-btn">
                                <span>
                                    Submit
                                    <i class="fa fa-long-arrow-right m-l-7" aria-hidden="true"></i>
                                </span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>



    <div id="dropDownSelect1"></div>

    <!--===============================================================================================-->
    <script src="../../../../../Clone%20Web/ContactFrom_v4/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="../../../../../Clone%20Web/ContactFrom_v4/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="../../../../../Clone%20Web/ContactFrom_v4/vendor/bootstrap/js/popper.js"></script>
    <script src="../../../../../Clone%20Web/ContactFrom_v4/vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="../../../../../Clone%20Web/ContactFrom_v4/vendor/select2/select2.min.js"></script>
    <script>
        $(".selection-2").select2({
            minimumResultsForSearch: 20,
            dropdownParent: $('#dropDownSelect1')
        });
    </script>
    <!--===============================================================================================-->
    <script src="../../../../../Clone%20Web/ContactFrom_v4/vendor/daterangepicker/moment.min.js"></script>
    <script src="../../../../../Clone%20Web/ContactFrom_v4/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="../../../../../Clone%20Web/ContactFrom_v4/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="../../../../../Clone%20Web/ContactFrom_v4/js/main.js"></script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
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