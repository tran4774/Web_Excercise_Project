package ch11_ex2.admin;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import ch11_ex2.business.User;
import ch11_ex2.data.UserDB;

@WebServlet("/exc/ch11_ex2/userAdmin")
public class UsersServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String url = "/exc/ch11_ex2/index.jsp";
        
        String action = request.getParameter("action");
        if (action == null) {
            action = "display_users";  // default action
        }
        
        if (action.equals("display_users")) {
            // get list of users
            ArrayList<User> users = UserDB.selectUsers();            
            request.setAttribute("users", users);
        } 
        else if (action.equals("display_user")) {
            String emailAddress = request.getParameter("email");
            User user = UserDB.selectUser(emailAddress);
            session.setAttribute("user", user);
            url = "/exc/ch11_ex2/user.jsp";
        }
        else if (action.equals("update_user")) {
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");

            User user = (User) session.getAttribute("user");
            user.setFirstName(firstName);
            user.setLastName(lastName);

            UserDB.update(user);
            ArrayList<User> users = UserDB.selectUsers();
            request.setAttribute("users", users);            
        }
        else if (action.equals("delete_user")) {
            String email = request.getParameter("email");
            User user = UserDB.selectUser(email);
            UserDB.delete(user);
            ArrayList<User> users = UserDB.selectUsers();
            request.setAttribute("users", users);            
        }
        
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