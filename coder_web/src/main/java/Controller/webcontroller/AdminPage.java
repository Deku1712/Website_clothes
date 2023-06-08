package Controller.webcontroller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Controller.DB.AccountDAO;
import Model.Account;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(urlPatterns = {"/AdminPage"})
public class AdminPage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String page="Home.jsp";
        try {
            List<Account> accounts = new AccountDAO().getListAccountFromDB();
            for (Account account : accounts) {
                if(account.getAcc().equals(session.getAttribute("phoness")) & (account.getType().equals("admin") || account.getType().equals("staff"))){
                    Store store = new Store();
                    store.list_Accounts = new AccountDAO().getListAccountFromDB();
                    req.setAttribute("RegisterMember", store.list_Accounts.size());
                    req.setAttribute("listAccount", store.list_Accounts);
                    req.setAttribute("productSoild", store.productSoild());
                    req.setAttribute("MonthRevenue", store.showMonthRevenue());
                    req.setAttribute("earningByProduct", store.showEarningByProduct());
                    req.setAttribute("listVIP", store.showVIP());
                    page = "Admin.jsp";
                    
                }
            }
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        req.getRequestDispatcher(page).forward(req, resp);
        

    }
}
