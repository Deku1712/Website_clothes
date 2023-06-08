package Controller.Action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Controller.DB.CartDAO;
import Model.Cart_product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/checkCookie"})
public class CheckCookie extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        
        String page = "Login.html";
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")){
                    session = req.getSession();
                    session.setAttribute("phoness", cookie.getValue());
                    List<Cart_product> list_cart_product;
                    try {
                        list_cart_product = new CartDAO().getListproductCardFromDB(cookie.getValue());
                        session.setAttribute("ListProduct_cart", list_cart_product);
                        
                    } catch (ClassNotFoundException | SQLException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                    
                    page="AdminPage";
                }
            }
            resp.sendRedirect(page);    
            
        }
    }
}
