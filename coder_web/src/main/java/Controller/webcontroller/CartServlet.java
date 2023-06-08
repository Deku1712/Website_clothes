package Controller.webcontroller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Controller.DB.CartDAO;
import Model.Cart_product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(urlPatterns = {"/CartServlet", "/Trash", "/Buy"})
public class CartServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        StringBuffer url = req.getRequestURL();
        if(url.toString().contains("CartServlet")){
            try {
                HttpSession session = req.getSession();
                
                List<Cart_product> list = new CartDAO().getListproductCardFromDB((String)session.getAttribute("phoness"));
                session.setAttribute("ListProduct_cart", list);
                req.setAttribute("quantity", list.size());
                req.getRequestDispatcher("Cart.jsp").forward(req, resp);
            } catch (ClassNotFoundException | SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        else if (url.toString().contains("Trash")){
            String phone = req.getParameter("phone");
            String id = req.getParameter("id") ;
            String size = req.getParameter("size");
            try {
                new CartDAO().delete(phone , id ,size);
            } catch (ClassNotFoundException | SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            req.getRequestDispatcher("CartServlet").forward(req, resp);
        }
        
    }
}
