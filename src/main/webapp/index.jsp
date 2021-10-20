<!DOCTYPE html>
<!--[if lt IE 7]> <html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]> <html lang="en" class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en" class="no-js"> <!--<![endif]-->
<head>
    <!-- meta charec set -->
    <!-- Always force latest IE rendering engine or request Chrome Frame -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <!-- Page Title -->
    <title>Web Project Team</title>
    <!-- Meta Description -->
    <meta name="description" content="Blue One Page Creative HTML5 Template">
    <meta name="keywords"
          content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
    <meta name="author" content="Muhammad Morshed">
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- CSS
    ================================================== -->
    <!-- Fontawesome Icon font -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <!-- Twitter Bootstrap css -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- jquery.fancybox  -->
    <link rel="stylesheet" href="css/jquery.fancybox.css">
    <!-- animate -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="css/main.css">
    <!-- media-queries -->
    <link rel="stylesheet" href="css/media-queries.css">
    <!-- Modernizer Script for old Browsers -->
    <script src="js/modernizr-2.6.2.min.js"></script>
    <%--TagLib and all Library JSP--%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page import="javax.*" %>
    <%@ page import="org.json.simple.parser.JSONParser" %>
    <%@ page import="org.json.simple.JSONObject" %>
    <%@ page import="org.json.simple.JSONArray" %>
    <%@ page import="java.nio.charset.StandardCharsets" %>
    <%@ page import="java.io.FileReader" %>
    <%@ page import="java.nio.charset.Charset" %>

</head>
<body id="body">

<!-- function JSP -->
<%!
    public static FileReader readFile(HttpServletRequest request, String path, Charset charset) {
        try {
            return new FileReader(
                    request.getServletContext().getRealPath(path),
                    charset
            );
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return null;
    }
%>

<!-- preloader -->
<div id="preloader">
    <img src="img/preloader.gif" alt="Preloader">
</div>
<!-- end preloader -->

<!--
Fixed Navigation
==================================== -->
<header id="navigation" class="navbar-fixed-top navbar">
    <div class="container">
        <div class="navbar-header">
            <!-- responsive nav button -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <i class="fa fa-bars fa-2x"></i>
            </button>
            <!-- /responsive nav button -->

            <!-- logo -->
            <a class="navbar-brand" href="#body">
                <h1 id="logo">
                    <img src="img/ourteam-logo.png" alt="Brandi">
                </h1>
            </a>
            <!-- /logo -->
        </div>

        <!-- main nav -->
        <nav class="collapse navbar-collapse navbar-right" role="navigation">
            <ul id="nav" class="nav navbar-nav">
                <li class="current"><a href="#body">Home</a></li>
                <li><a href="#features">Tools</a></li>
                <li><a href="#works">Assignments</a></li>
                <li><a href="#team">Team</a></li>
                <li id="test"><a href="#contact">Contact</a></li>
            </ul>
        </nav>
        <!-- /main nav -->

    </div>
</header>
<!--
End Fixed Navigation
==================================== -->


<!--
Home Slider
==================================== -->

<section id="slider">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

        <!-- Indicators bullet -->
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        </ol>
        <!-- End Indicators bullet -->

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">

            <!-- single slide -->
            <div class="item active" style="background: url(img/4872528.jpg) no-repeat right top  ;">
                <div class="carousel-caption">
                    <h2 data-wow-duration="700ms" data-wow-delay="500ms" class="wow bounceInDown animated"><span>Welcome to our web</span>!
                    </h2>
                    <h3 data-wow-duration="1000ms" class="wow slideInLeft animated"><span class="color"></span>
                        This site is for posting assignments </h3>
                    <p data-wow-duration="1000ms" class="wow slideInRight animated">WEB PROGRAMMING </p>

                    <ul class="social-links text-center">
                        <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- end single slide -->

            <!-- single slide -->
            <div class="item" style="background: url(img/4905084.jpg) no-repeat top ;">
                <div class="carousel-caption">
                    <h2 data-wow-duration="500ms" data-wow-delay="500ms" class="wow bounceInDown animated">
                        <span>Team</span></h2>
                    <h3 data-wow-duration="500ms" class="wow slideInLeft animated">LO TRAN SON</h3>
                    <ul class="social-links text-center">
                        <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
                        <li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
                    </ul>
                </div>
            </div>
            <!-- end single slide -->
        </div>
        <!-- End Wrapper for slides -->
    </div>
</section>

<!--
End Home SliderEnd
==================================== -->

<!--
Tools
==================================== -->

<section id="features" class="features">
    <div class="container">
        <div class="row">
            <div class="sec-title text-center mb50 wow bounceInDown animated" data-wow-duration="50ms">
                <h2>Tools</h2>
                <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
            </div>
            <div class="row">
                <div class="col">
                    <%
                        JSONParser parser = new JSONParser();
                        try (FileReader file = readFile(request, "/data/tools/tools.json", StandardCharsets.UTF_8)) {
                            JSONArray tools = (JSONArray) parser.parse(file);
                            int dataWowDelay = 300;
                            for (Object obj : tools) {
                                JSONObject tool = (JSONObject) obj;%>
                    <div class="col-md-4 wow fadeInDown" data-wow-duration="500ms" data-wow-delay="<%=dataWowDelay%>ms">
                        <div class="service-item">
                            <div>
                                <a href="<%=tool.get("link")%>">
                                    <img src="<%=tool.get("imageSource")%>" alt="<%=tool.get("alt")%>">
                                    <div class="service-desc">
                                        <h3><%=tool.get("title")%>
                                        </h3>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <%
                                dataWowDelay += 300;
                            }
                        } catch (Exception ex) {
                            ex.printStackTrace();
                        }
                    %>
                </div>
            </div>
        </div>
    </div>
</section>

<!--
End Tools
==================================== -->


<!--
Our Assignments
==================================== -->

<section id="works" class="works clearfix">
    <div class="container">
        <div class="row">

            <div class="sec-title text-center">
                <h2>Assignments</h2>
                <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
            </div>

            <div class="sec-sub-title text-center">
                <p>There will be one assignment every week of the semester; assignments are due Wednesday at
                    midnight </p>
            </div>

            <div class="work-filter wow fadeInRight animated" data-wow-duration="500ms">
                <ul class="text-center">
                    <li><a href="javascript:" data-filter="all" class="active filter">All</a></li>
                    <li><a href="javascript:" data-filter=".Week3-5" class="filter">Week 3-5</a></li>
                    <li><a href="javascript:" data-filter=".Week6-10" class="filter">Week 5-10</a></li>
                    <li><a href="javascript:" data-filter=".final" class="filter">Final Project</a></li>
                </ul>
            </div>
        </div>
    </div>

    <div class="project-wrapper">
        <!-- loop render Exercises -->
        <%
            try (FileReader file = readFile(request, "/data/exercises/exercise.json", StandardCharsets.UTF_8)) {
                JSONArray exercises = (JSONArray) parser.parse(file);
                for (Object obj : exercises) {
                    JSONObject exercise = (JSONObject) obj;%>
        <figure class="mix work-item <%=exercise.get("week")%>" id="<%=exercise.get("id")%>">
            <img src="<%=exercise.get("image")%>" alt="">
            <figcaption class="overlay">
                <a rel="works" href="<%=exercise.get("linkToExercise")%>"><i
                        class="fa fa-eye fa-lg"></i></a>
                <%=exercise.get("description")%>
            </figcaption>
        </figure>
        <%
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        %>
        <!-- end loop render Exercises -->
    </div>
</section>

<!--
End Our Assignments
==================================== -->

<!--
Meet Our Team
==================================== -->

<section id="team" class="team">
    <div class="container">

        <div class="sec-title text-center wow fadeInUp animated" data-wow-duration="700ms" style="padding-bottom: 30px">
            <h2>Meet Our Team</h2>
            <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
        </div>

        <div class="col">
            <!-- loop render single member -->
            <%
                try (FileReader file = readFile(request, "/data/team/teammembers.json", StandardCharsets.UTF_8)) {
                    JSONArray members = (JSONArray) parser.parse(file);
                    for (Object obj : members) {
                        JSONObject member = (JSONObject) obj;%>
            <figure class="team-member col-md-4 col-sm-6 col-xs-12 text-center">
                <div class="member-thumb ">
                    <img src="<%=member.get("image")%>" alt="<%=member.get("alt")%>"
                         class="img-circle center-block">
                    <figcaption class="overlay">
                        <h5></h5>
                        <p></p>
                        <ul class="social-links text-center">
                            <li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
                            <li><a href="<%=member.get("facebook")%>"><i class="fa fa-facebook fa-lg"></i></a></li>
                            <li><a href="<%=member.get("github")%>"><i class="fa fa-github fa-lg"
                                                                       style="font-size:2.7rem"></i></a></li>
                        </ul>
                    </figcaption>
                </div>
                <h4><%=member.get("devname")%>
                </h4>
                <span><%=member.get("description")%></span>
            </figure>
            <%
                    }
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            %>
            <!-- end loop render single member -->
        </div>
    </div>
</section>

<!--
End Meet Our Team
==================================== -->

<!--
Some fun facts
==================================== -->

<section id="facts" class="facts">
    <div class="parallax-overlay">
        <div class="container">
            <div class="row number-counters">

                <div class="sec-title text-center mb50 wow rubberBand animated" data-wow-duration="1000ms">
                    <h2>Our Skill</h2>
                    <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
                </div>

                <%--Star Skill Bar--%>
                <div id="skill-bar">
                    <div id="html">
                        <h4>HTML</h4>
                        <div class="progress">
                            <div class="progress-value-html"></div>
                        </div>
                    </div>

                    <div id="css">
                        <h4>CSS</h4>
                        <div class="progress">
                            <div class="progress-value-css"></div>
                        </div>
                    </div>

                    <div id="js">
                        <h4>Javascript</h4>
                        <div class="progress">
                            <div class="progress-value-js"></div>
                        </div>
                    </div>

                    <div id="java">
                        <h4>Java</h4>
                        <div class="progress">
                            <div class="progress-value-java"></div>
                        </div>
                    </div>
                </div>
                <%--End Skill Bar--%>
            </div>
        </div>
    </div>
</section>

<!--
End Some fun facts
==================================== -->


<!--
Contact Us
==================================== -->

<section id="contact" class="contact">
    <div class="container">
        <div class="row mb50">

            <div class="sec-title text-center mb50 wow fadeInDown animated" data-wow-duration="500ms">
                <h2>Contact for us</h2>
                <div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
            </div>

            <div class="sec-sub-title text-center wow rubberBand animated" data-wow-duration="1000ms">
                <p>Leave your information and we contact to you</p>
            </div>

            <!-- contact address -->
            <div class="col-lg-3 col-md-3 col-sm-4 col-xs-12 wow fadeInLeft animated" data-wow-duration="500ms">
                <div class="contact-address">
                    <h3>Dai hoc Su pham ky thuat</h3>
                    <p>01 Vo Van Ngan</p>
                    <p>Thu Duc City</p>
                    <p>(+84) 0946220172</p>
                </div>
            </div>
            <!-- end contact address -->

            <!-- contact form -->
            <div class="col-lg-8 col-md-8 col-sm-7 col-xs-12 wow fadeInDown animated" data-wow-duration="500ms"
                 data-wow-delay="300ms">
                <div id="contact-form-div" >
                    <form id="show-guide" action="/exc/ch05_ex1/EmailListServlet" method="post"  class="contact-form">
                        <input class="contact-input" type="hidden" name="action" value="add" >

                        <label class="contact-label"> <i>Email:</i> </label>
                        <input type="email" name="email" class="contact-mail"  placeholder="yourmail@gmail.com" required><br>

                        <label class="contact-label"> <i>First Name:</i> </label>
                        <input  type="text" name="firstName" class="contact-fname" placeholder="First name" required><br>

                        <label class="contact-label"> <i>Last Name:</i> </label>
                        <input type="text" name="lastName" class="contact-lname" placeholder="Last name" required><br>

                        <input  type="submit" value="Join Now" id="submit"> <br>
                    </form>
                    <span class="tooltiptext">Tooltip text</span>
                </div>
            </div>
            <!-- end contact form -->

        </div>
    </div>

    <!-- Google map -->
    <%--    <div id="map_canvas" class="wow bounceInDown animated" data-wow-duration="500ms"></div>--%>
    <!-- End Google map -->

</section>

<!--
End Contact Us
==================================== -->


<footer id="footer" class="footer">
    <div class="container">
        <div class="row">

            <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms"
                 data-wow-delay="300ms">
                <div class="footer-single">
                    <h6>Subscribe </h6>
                    <form action="#" class="subscribe">
                        <input type="text" name="subscribe" id="subscribe">
                        <input type="submit" value="&#8594;" id="subs">
                    </form>
                    <p>eusmod tempor incididunt ut labore et dolore magna aliqua. </p>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms"
                 data-wow-delay="600ms">
                <div class="footer-single">
                    <h6>Explore</h6>
                    <ul>
                        <li><a href="#">Inside Us</a></li>
                        <li><a href="#">Flickr</a></li>
                        <li><a href="#">Google</a></li>
                        <li><a href="#">Forum</a></li>
                    </ul>
                </div>
            </div>

            <div class="col-md-3 col-sm-6 col-xs-12 wow fadeInUp animated" data-wow-duration="500ms"
                 data-wow-delay="900ms">
                <div class="footer-single">
                    <h6>Support</h6>
                    <ul>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Market Blog</a></li>
                        <li><a href="#">Help Center</a></li>
                        <li><a href="#">Pressroom</a></li>
                    </ul>
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-12">
                <p class="copyright text-center">
                    Copyright 2015 <a href="https://themefisher.com/">Themefisher</a>. All rights reserved. Designed &
                    developed by <a href="https://themefisher.com/">Themefisher</a>
                    <br>Modify by Lo Tran Son
                </p>
            </div>
        </div>
    </div>
</footer>

<a href="javascript:void(0);" id="back-top"><i class="fa fa-angle-up fa-3x"></i></a>

<!-- Essential jQuery Plugins
================================================== -->
<!-- Main jQuery -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- Single Page Nav -->
<script src="js/jquery.singlePageNav.min.js"></script>
<!-- Twitter Bootstrap -->
<script src="js/bootstrap.min.js"></script>
<!-- jquery.fancybox.pack -->
<script src="js/jquery.fancybox.pack.js"></script>
<!-- jquery.mixitup.min -->
<script src="js/jquery.mixitup.min.js"></script>
<!-- jquery.parallax -->
<script src="js/jquery.parallax-1.1.3.js"></script>
<!-- jquery.countTo -->
<script src="js/jquery-countTo.js"></script>
<!-- jquery.appear -->
<script src="js/jquery.appear.js"></script>
<!-- Contact form validation -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
<!-- Google Map -->
<script type="text/javascript"
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
<!-- jquery easing -->
<script src="js/jquery.easing.min.js"></script>
<!-- jquery easing -->
<script src="js/wow.min.js"></script>
<script>
    var wow = new WOW({
            boxClass: 'wow',      // animated element css class (default is wow)
            animateClass: 'animated', // animation css class (default is animated)
            offset: 120,          // distance to the element when triggering the animation (default is 0)
            mobile: false,       // trigger animations on mobile devices (default is true)
            live: true        // act on asynchronously loaded content (default is true)
        }
    );
    wow.init();
</script>
<!-- Custom Functions -->
<script src="js/custom.js"></script>

<script type="text/javascript">
    $(function () {
        /* ========================================================================= */
        /*	Contact Form
        /* ========================================================================= */

        $('#contact-form').validate({
            rules: {
                name: {
                    required: true,
                    minlength: 2
                },
                email: {
                    required: true,
                    email: true
                },
                message: {
                    required: true
                }
            },
            messages: {
                name: {
                    required: "come on, you have a name don't you?",
                    minlength: "your name must consist of at least 2 characters"
                },
                email: {
                    required: "no email, no message"
                },
                message: {
                    required: "um...yea, you have to write something to send this form.",
                    minlength: "thats all? really?"
                }
            },
            submitHandler: function (form) {
                $(form).ajaxSubmit({
                    type: "POST",
                    data: $(form).serialize(),
                    url: "process.php",
                    success: function () {
                        $('#contact-form :input').attr('disabled', 'disabled');
                        $('#contact-form').fadeTo("slow", 0.15, function () {
                            $(this).find(':input').attr('disabled', 'disabled');
                            $(this).find('label').css('cursor', 'default');
                            $('#success').fadeIn();
                        });
                    },
                    error: function () {
                        $('#contact-form').fadeTo("slow", 0.15, function () {
                            $('#error').fadeIn();
                        });
                    }
                });
            }
        });
    });
</script>

<script>
    var show= document.getElementById("show-guide");
    var button=document.getElementById("exc1");
    function flare (){

        show.style.animationName="focus";
        show.style.animationDuration="8s";

    }
    button.addEventListener("click", function(){
        flare();
        setTimeout(function (){show.style.animationName="none";},8000);

    })



</script>

</body>
</html>