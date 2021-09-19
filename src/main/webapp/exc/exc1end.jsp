<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Murach's Java Servlet and JSP</title>
        <meta charset="UTF-8">
		<link rel="stylesheet" href="style/main.css" type="text/css"/>
    </head>
    <body>
        <h1>Thanks for joining our email list</h1>
        
        <p>Here is the information that you enter</p>
        
        <label>Email:</label>
        <span>${email}</span><br>
        <label>First name:</label>
        <span>${firstName}</span><br>
        <label>Last name:</label>
        <span>${lastName}</span><br>
        <%
            //out.println(session);
        %>
        <p>To enter another email address, click on the Back button in your browser or the Return button shown below</p>
        
        <form action="" method="get">
            <input type="hidden" name="action" value="join">
            <input type="submit" value="Return">
        </form>
    </body>
</html>