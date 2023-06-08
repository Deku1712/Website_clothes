package Controller.Action;

import java.io.IOException;
import java.sql.SQLException;

import Controller.webcontroller.Store;
import Model.Account;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet(urlPatterns = {"/manage"})
public class Manage extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String phone = (String) session.getAttribute("phoness");
        String upAcc = req.getParameter("acc");
        String type = req.getParameter("FixType");
        String btn = req.getParameter("btn");
        Store s = new Store();
        String page="AdminPage";
        
        try {
            s.getListAccount();
            for (Account account : s.list_Accounts) {
                if(account.getAcc().equals(phone) & account.getType().equals("admin")){
                    if (btn.contains("Update")){
                        s.updateAcc(upAcc, type);
                    }
                    else if (btn.contains("Delete")){
                        s.deleteAcc(upAcc);
                    }
                    break;
                }
            }

            
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        resp.sendRedirect(page);

    }
    
}
