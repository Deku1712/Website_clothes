package Controller.Action;

import java.io.IOException;
import java.sql.SQLException;

import Controller.webcontroller.Store;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/showBill"})
public class ShowBill extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String codebill = req.getParameter("codebill");
        Store store = new Store();
        try {
            store.getListOrderOfBill(codebill);
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        req.setAttribute("listOrder", store.list_Orders);
        req.getRequestDispatcher("ShowBill.jsp").forward(req, resp);
    }
}
