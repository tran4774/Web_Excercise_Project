<!DOCTYPE html>
<html>
    <head>
        <title>Start Page</title>
       	<meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html">
        <link rel="stylesheet" href="/css/exc1.css" type="text/css"/>
    </head>
    <body>
        <h1 >Join to our email list</h1>
        <p>To join our email list, enter your name and email address below</p>
        <form action="EmailListServlet" method="post">
            <input type="hidden" name="action" value="add">
            
            <label>Email:</label>
            <input type="email" name="email" required><br>
            <!-- required là thuộc tính hiện thông tin cần bắt buộc -->
            
            <label>First Name:</label>
            <input type="text" name="firstName" required><br>
            
            <label>Last Name:</label>
            <input type="text" name="lastName" required><br>
            
            <label>&nbsp;</label>
            <input type="submit" value="Join Now" id="submit"><br>
        </form>
    </body>
</html>
