<%--
  Created by IntelliJ IDEA.
  User: son17
  Date: 10/25/2021
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Contact V4</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../../img/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="../../css/util-sub.css">
    <link rel="stylesheet" type="text/css" href="../../css/main-sub.css">
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
                    <span style="margin-right: 10px;">First name:</span> <span class="info-name">${user.firstName}</span>
                    <span style="margin-left: 10px;">Last name:</span> <span class="info-name">${user.lastName}</span> <br>
                </div>
                <span>Email:</span> <span class="info-name">${user.email}</span> <br>
                <span>Heard from:</span> <span class="info-name">${user.heardFrom}</span> <br>
                <span>Update:</span> <span class="info-name">${user.wantsUpdates}</span> <br>
            </div>

            <div class="container-contact100-form-btn">
                <div class="wrap-contact100-form-btn">
                    <div class="contact100-form-bgbtn"></div>
                    <button class="contact100-form-btn">
                        <a class="contact100-form-btn" href="/">
                        <span>
                            <i class="fa fa-long-arrow-left m-l-7" aria-hidden="true" style="padding-right: 20px"></i>
                            Back to Home Page
                        </span>
                        </a>
                    </button>
                </div>
            </div>
        </form>
    </div>
</div>


<div id="dropDownSelect1"></div>

</body>
</html>
