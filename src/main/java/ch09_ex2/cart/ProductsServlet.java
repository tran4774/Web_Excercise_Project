package ch09_ex2.cart;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.util.ArrayList;

import ch09_ex2.data.ProductIO;
import ch09_ex2.business.Product;

@WebServlet("/exc/ch09_ex2/loadProducts")
public class ProductsServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        String path = getServletContext().getRealPath("/exc/ch09_ex2/data/products.txt");
        ArrayList<Product> products = ProductIO.getProducts(path);
        session.setAttribute("products", products);

        String url = "/exc/ch09_ex2/index1.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
}