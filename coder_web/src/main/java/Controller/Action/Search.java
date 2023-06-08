package Controller.Action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Controller.DB.ProductDAO;
import Controller.webcontroller.Store;
import Model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/search"})
public class Search extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String search = req.getParameter("q");
        Store store = new Store();
        List<Product> listProductSearch = new ArrayList<>();
        try {
            store.list_Product = new ProductDAO().getListProductFromDB();
            store.list_Product.forEach((Product p) ->{
                if (p.getName_product().toUpperCase().contains(search.toUpperCase())){
                    listProductSearch.add(p);
                }
            });
            req.setAttribute("list_Product", listProductSearch);
            req.getRequestDispatcher("shop.jsp").forward(req, resp);



        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }
    
}
