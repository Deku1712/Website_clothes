package Controller.webcontroller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Controller.DB.ProductDAO;
import Model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/notification"})
public class Notification extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<String> listnotenough = (List<String>) req.getAttribute("listNotEnough");
        List<List<String>> list = new ArrayList<>();
        listnotenough.forEach((String id) -> {
            List<String> product = new ArrayList<>();
            Product p;
            try {
                p = new ProductDAO().getProductFromDB(id);
                int quanity = new ProductDAO().getQuantityById(id);
                product.add(p.getName_product());
                product.add(p.getUrl());
                product.add(String.valueOf(quanity));
            } catch (ClassNotFoundException | SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            list.add(product);
            
        });
        
        req.setAttribute("listNotification", list);
        req.getRequestDispatcher("Notification.jsp").forward(req, resp);
    }
}
