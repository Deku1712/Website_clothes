package Controller.webcontroller;

import java.io.IOException;
import java.sql.SQLException;

import Controller.DB.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/shop"})
public class Shop extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Store store = new Store();
        try {
            store.list_Product = new ProductDAO().getListProductFromDB();
            req.setAttribute("list_Product", store.list_Product);
            req.getRequestDispatcher("shop.jsp").forward(req, resp);
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
}
