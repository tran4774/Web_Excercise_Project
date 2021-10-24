<!DOCTYPE html>
<html>
<head>
    <%@ include file="header_ch08_ex1.jsp"%>
</head>
<body>
    <h1>Join our email list</h1>
    <p>To join our email list, enter your name and
       email address below.</p>
    <jsp:useBean id="user" scope="session" class="ch05_ex1.business.User"/>
    <form action="emailList" method="post">
        <input type="hidden" name="action" value="add">        
        <label class="pad_top">Email:</label>
        <input type="email" name="email"  value=${user.email}><br>
        <label class="pad_top">First Name:</label>
        <input type="text" name="firstName" value=${user.firstName}><br>
        <label class="pad_top">Last Name:</label>
        <input type="text" name="lastName" value="${user.lastName}"><br>
        <label></label>
        <input type="submit" value="Join Now" class="margin_left">
    </form>
</body>
</html>