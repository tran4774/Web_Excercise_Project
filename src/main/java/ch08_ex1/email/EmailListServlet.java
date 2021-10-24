package ch08_ex1.email;

import java.io.*;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import ch08_ex1.business.User;
import ch08_ex1.data.UserDB;
import ch08_ex1.data.UserIO;

@WebServlet("/exc/ch08_ex1/emailList")
public class EmailListServlet extends HttpServlet
{    
    @Override
    protected void doPost(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {

        HttpSession session = request.getSession();
        
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  // default action
        }

        String url = "/exc/ch08_ex1/index.jsp";
        if (action.equals("join")) {
            url = "/exc/ch08_ex1/index.jsp";
        }
        else if (action.equals("add")) {                
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            User user = new User(firstName, lastName, email);
            UserDB.insert(user);
            
            session.setAttribute("user", user);
            url = "/exc/ch08_ex1/thanks.jsp";
        }
        
        Date currentDate = new Date();
        request.setAttribute("currentDate", currentDate);

        String path = getServletContext().getRealPath("/exc/ch08_ex1/data/EmailList.txt");
        ArrayList<User> users = UserIO.getUsers(path);
        session.setAttribute("users", users);

        getServletContext()
            .getRequestDispatcher(url)
            .forward(request, response);
    }    
    
    @Override
    protected void doGet(HttpServletRequest request, 
                          HttpServletResponse response) 
                          throws ServletException, IOException {
        doPost(request, response);
    }    
}