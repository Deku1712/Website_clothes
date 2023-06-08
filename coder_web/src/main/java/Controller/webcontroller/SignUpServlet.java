package Controller.webcontroller;

import java.io.IOException;
import java.sql.SQLException;

import Model.Validation;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/signup"})
public class SignUpServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name_inf");
        String address = req.getParameter("address");
        String user  = req.getParameter("us");
        String pass = req.getParameter("ps");
        Store store = new Store();

        if (Validation.PHONE_PATTERN.matcher(user).matches()){
            try {
                store.createCustomer(name, address, user);
                store.createAccount(user, pass);
                resp.sendRedirect("Login.html");
            } catch (ClassNotFoundException | SQLException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        else{
            resp.sendRedirect("SignUp.html");
        }
    }
}
