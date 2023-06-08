package Controller.webcontroller;


import java.util.Date;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import Controller.Action.Feature;
import Controller.DB.AccountDAO;
import Controller.DB.BillDAO;
import Controller.DB.CustomerDAO;
import Controller.DB.DetailBillDAO;
import Controller.DB.ProductDAO;
import Model.Account;
import Model.Bill;
import Model.Customer;
import Model.Order;
import Model.Product;

public class Store {
    public List<Product> list_Product ;
    public List<Account> list_Accounts ;
    public List<Customer> list_Customer;
    public List<Bill>  list_Bill;
    public List<Order> list_Orders;

    public Store() {
        list_Product = new ArrayList<>();
        list_Accounts = new ArrayList<>();
        list_Customer = new ArrayList<>();
        list_Bill = new ArrayList<>();
        list_Orders = new ArrayList<>();
    }
    
   
    public List<Product> getList_Product() {
        return list_Product;
    }


    public List<Account> getList_Accounts() {
        return list_Accounts;
    }


    public List<Customer> getList_Customer() {
        return list_Customer;
    }

    public Bill makeBill(String phone) throws ClassNotFoundException, SQLException{
        String codeBill = new Feature().ranDomCodeBill();
        Date date = new Feature().getNow();
        new BillDAO().insertBill(phone, codeBill);
        return new Bill(phone, codeBill, new Timestamp(date.getTime()));
    }

    public Float showMonthRevenue() throws ClassNotFoundException, SQLException{
        float total = 0;
        List<String> codeBills = new BillDAO().getCodeBillinMonth();
        for (String code : codeBills) {
            total+= new DetailBillDAO().getTotalofBill(code);
        }
        return total;
    }

    public int productSoild() throws ClassNotFoundException, SQLException{
        int productSoild = new DetailBillDAO().getProductSoild();
        return productSoild;
    }

    public void createCustomer(String name, String address, String user) throws ClassNotFoundException, SQLException{
        new CustomerDAO().insertCustomer(name, address, user);
    }

    public void createAccount(String user, String pass) throws ClassNotFoundException, SQLException{
        new AccountDAO().insertAccount(user, pass);
    }

    public List<List<String>> showEarningByProduct() throws ClassNotFoundException, SQLException{
        List<List<String>> list = new BillDAO().getEarningByItems();
        return list;
    }

    public List<List<String>> showVIP() throws ClassNotFoundException, SQLException{
        return new BillDAO().getListVIP();
    }

    public List<List<String>> getListBillByPhone(String phone) throws ClassNotFoundException, SQLException{
        return new BillDAO().getListBillByPhone(phone);
    }

    public boolean checkQuantity(String id, int quantity) throws ClassNotFoundException, SQLException{
        int q = new ProductDAO().getQuantityById(id);
        if (quantity >  q ){
            return false;
        }
        else{
            return true;
        }
    }

    public void getListOrderOfBill(String codeBill) throws ClassNotFoundException, SQLException{
        this.list_Orders = new DetailBillDAO().getListOrderOfBill(codeBill);
    }

    public void getListAccount() throws ClassNotFoundException, SQLException{
        this.list_Accounts = new AccountDAO().getListAccountFromDB();
    }


    public void updateAcc(String upAcc, String upType) throws ClassNotFoundException, SQLException {
        new AccountDAO().Update(upAcc, upType);
    }


    public void deleteAcc(String upAcc) throws ClassNotFoundException, SQLException {
        new AccountDAO().Delete(upAcc);
    }


    
    
    
   
    

}
