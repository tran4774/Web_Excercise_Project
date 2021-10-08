package murach.email;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmailListServlet
 */
@WebServlet("/EmailListServlet")
public class EmailListServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String url = "/exc/exc1.html";
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        //get current action
        String action = request.getParameter("action");
        if (action == null) {
            action = "join";  //default action
        }

        //perform action and set URL to appropriate page
        if (action.equals("join")) {
            url = "/";  //the "join" page
            RequestDispatcher dispatcher = request.getRequestDispatcher(url);
            dispatcher.forward(request, response);
        } else if (action.equals("add")) {
            //get parameters from the request
            String firstName = request.getParameter("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter("email");

            request.setAttribute("firstName", firstName);
            request.setAttribute("lastName", lastName);
            request.setAttribute("email", email);

            //store data in User object and save User object in db
            //User user=new User(firstName,lastName,email);
            //UserDB.insert(user);

            //set User object in request object and set URL
            // request.setAttribute("user", user);
            url = "/exc/exc1rebuild.jsp"; //the "thanks" page
            getServletContext()
                    .getRequestDispatcher(url)
                    .forward(request, response);
        }
        //processRequest(request, response);
        //forward request and response objects to specified URL
       /* getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
        */
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
