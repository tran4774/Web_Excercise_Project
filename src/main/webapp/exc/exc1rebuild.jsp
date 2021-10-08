<%--
  Created by IntelliJ IDEA.
  User: son17
  Date: 10/8/2021
  Time: 3:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

<head>
    <title>Contact V4</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../img/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../css/util-sub.css">
    <link rel="stylesheet" type="text/css" href="../css/main-sub.css">
    <!--===============================================================================================-->
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
                    <span style="margin-right: 10px;">First name:</span> <span class="info-name">${firstName}</span>
                    <span style="margin-left: 10px;">Last name:</span> <span class="info-name">${lastName}</span> <br>
                </div>
                <span style="margin-right: 15px;">Email:</span> <span class="info-name">${email}</span> <br>



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
