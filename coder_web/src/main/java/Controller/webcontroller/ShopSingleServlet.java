package Controller.webcontroller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Controller.DB.CartDAO;
import Controller.DB.ProductDAO;
import Model.Cart_product;
import Model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/shop-single"})
public class ShopSingleServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();

        String phone =(String)session.getAttribute("phoness");
        String id = (String)session.getAttribute("id");
        int quantity = Integer.parseInt(req.getParameter("product-quanity"));
        String size = req.getParameter("product-size");
        Boolean flag = true;
        try {
            List<Cart_product> list = new CartDAO().getListproductCardFromDB(phone);
            for (Cart_product c : list) {
                // co trong cadd giong size thi update
                if (c.getId().equals(id)){
                    if(c.getSize().equals(size)){
                        quantity = c.getQuantity() + quantity;
                        Float total = quantity*c.getPrice();
                        new CartDAO().update(phone, id , size, quantity,total);
                        flag = false;

                        
                    }
                    // co trong cart nhung khac size
                    else{
                        Cart_product p = new Cart_product(c.getPhone(),c.getId(),c.getName(),c.getUrl(),size,quantity,c.getPrice(),(quantity*c.getPrice()));
                        new CartDAO().addToCart(p);
                        flag = false;
                        
                        
                    }
                }
            }
            // chua co trong cart, add mới
            if (flag){
                Product p = new ProductDAO().getProductFromDB(id);
                Cart_product cartP = new Cart_product(phone, id, p.getName_product(), p.getUrl(), size, quantity, p.getPrice(), (quantity*p.getPrice()));
                new CartDAO().addToCart(cartP);
            }
            
            

        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        String btn = req.getParameter("submit");
        switch (btn) {
            case "buy":
                req.setAttribute("size", size);
            
                req.getRequestDispatcher("CartServlet").forward(req, resp);
                break;
        
            

            case "addtocart":{
                req.getRequestDispatcher("CartServlet").forward(req, resp);
                break;
            }
        }
    }
}
