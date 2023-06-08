package Controller.webcontroller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import Controller.DB.AccountDAO;
import Controller.DB.CartDAO;
import Model.Account;
import Model.Cart_product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/login"})
public class LoginServlet extends HttpServlet{
    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String user = req.getParameter("us");
        String pass = req.getParameter("ps");
        String rem = req.getParameter("rm");
        String page= "Login.html";
    
        try {
            List<Account> list_Account =  new AccountDAO().getListAccountFromDB();

            
            for (Account account : list_Account) {
                if (user.equals(account.getAcc()) & pass.equals(account.getPass())){
                    if (rem != null){
                        Cookie cookie = new Cookie("username", user);
                        cookie.setMaxAge(600);
                        resp.addCookie(cookie);
                    }
                    
                    HttpSession session = req.getSession();
                    session.setAttribute("phoness", user );
                    List<Cart_product> list_cart_product = new CartDAO().getListproductCardFromDB(user);
                    session.setAttribute("ListProduct_cart", list_cart_product);
                    page="Home.jsp";

                    if(account.getType().equals("admin") || account.getType().equals("staff") ){
                        page="AdminPage";
                    }
                    break;
                }
            }
            resp.sendRedirect(page);
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

        
    
}
