package Controller.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Order;


public class DetailBillDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public void insertDetailBill(String codeBill, String name, int quantity, float price, float total) throws ClassNotFoundException, SQLException{
        String query = "Insert Into DetailBill_Table Values(?, ? , ? ,?,? )";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, codeBill);
        ps.setString(2, name);
        ps.setInt(3, quantity);
        ps.setFloat(4, price);
        ps.setFloat(5, total);
        ps.executeUpdate();

    }

    public int getProductSoild() throws ClassNotFoundException, SQLException{
        String query = "Select Sum(quantity) From DetailBill_Table ";
        int productSoild = 0;
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        while(rs.next()){
            productSoild = rs.getInt(1);
        }
        return productSoild;

    }

    public Float getTotalofBill(String codeBill) throws SQLException, ClassNotFoundException{
        float total = 0;
        conn = DBconnect.makeConnection();
        String query = "Select Sum(total) From DetailBill_Table Where codeBill = ?";
        ps = conn.prepareStatement(query);
        ps.setString(1, codeBill);
        rs = ps.executeQuery();
        while(rs.next()){
            total += Float.parseFloat(rs.getString(1));
        }
        return total;
        
    }

    public List<Order> getListOrderOfBill(String codeBill) throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        String query = "Select * From DetailBill_table where DetailBill_Table.codeBill = ?";
        ps = conn.prepareStatement(query);
        ps.setString(1, codeBill);
        rs= ps.executeQuery();
        List<Order> list = new ArrayList<>();
        while(rs.next()){
            Order o = new Order(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getFloat(4), rs.getFloat(5));
            list.add(o);
        }
        return list;
    }
}
