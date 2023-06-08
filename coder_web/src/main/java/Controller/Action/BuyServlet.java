package Controller.Action;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import Controller.DB.CartDAO;
import Controller.DB.DetailBillDAO;
import Controller.DB.ProductDetailDAO;
import Controller.webcontroller.Store;
import Model.Bill;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/BuyServlet"})
public class BuyServlet extends HttpServlet{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String phone = (String)session.getAttribute("phoness");
        Store store = new Store();
        String page = "CartServlet";

        List<String> listNotEnough = new ArrayList<>();

        try {
            
            String[] myCheckboxValues = req.getParameterValues("myCheckbox");
            
            Map<String , Integer> listCheck = new HashMap();
            if (myCheckboxValues != null) {
                for (String s : myCheckboxValues) {
                    String[] parts = s.split("//");
                    if (listCheck.containsKey(parts[0])){
                        int q = listCheck.get(parts[0]);
                        listCheck.put(parts[0], q +Integer.parseInt(parts[3])) ;
                    }
                    else{
                        listCheck.put(parts[0], Integer.parseInt(parts[3]));
                    }
                }

                listCheck.forEach((String id, Integer quantity) ->{
                    try {
                        if (!store.checkQuantity(id, quantity)){
                            listNotEnough.add(id);
                        }
                    } catch (ClassNotFoundException | SQLException e) {
                        // TODO Auto-generated catch block
                        e.printStackTrace();
                    }
                });

                if (listNotEnough.isEmpty() ){
                    Bill b = store.makeBill(phone);
                    for (String s : myCheckboxValues) {
                        String[] parts = s.split("//");
                        String id = parts[0];
                        String name = parts[1];
                        String size = parts[2];
                        int quantity = Integer.parseInt(parts[3]);
                        float price = Float.parseFloat(parts[4]);
                        float total = price*quantity;
        
                        try {
                            new CartDAO().delete(phone, id, size);
                            new ProductDetailDAO().updateQuantity(id, quantity);
                            new DetailBillDAO().insertDetailBill(b.getCodeBill(),name, quantity, price, total);
                            
                        } catch (ClassNotFoundException | SQLException e) {
                            // TODO Auto-generated catch block
                            e.printStackTrace();
                        }

                    }
                    page = "historyBill";
                    
                    
                }
                else{
                    req.setAttribute("listNotEnough", listNotEnough);
                    page = "notification";
                    req.getRequestDispatcher(page).forward(req, resp);
                    
                }

                
                
                
                

                
            }
            resp.sendRedirect(page);
            
            
        } catch (ClassNotFoundException | SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        
        
    }
}
