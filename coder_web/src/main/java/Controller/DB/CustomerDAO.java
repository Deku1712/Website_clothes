package Controller.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Customer;

public class CustomerDAO {
    Connection conn =null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Customer> getListAccountFromDB() throws ClassNotFoundException, SQLException{
        List<Customer> list= new ArrayList<>();
        conn =DBconnect.makeConnection();
        String query = "Select * From Customer_Table ";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();

        while(rs.next()){
            Customer cus = new Customer(rs.getString(1) , rs.getString(2), rs.getString(3));
            list.add(cus);
        }
        return list;

    }

    public void insertCustomer(String name, String address, String user) throws ClassNotFoundException, SQLException{
        String query = "Insert into Customer_Table VALUES(? , ? , ? ) ";
        conn =DBconnect.makeConnection();
        PreparedStatement stsm = conn.prepareStatement(query);
        stsm.setString(1, user);
        stsm.setString(2, name);
        stsm.setString(3, address);   
        stsm.executeUpdate();
    }
}
