package Controller.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Cart_product;

public class CartDAO {
    Connection conn =null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Cart_product> getListproductCardFromDB(String phone) throws SQLException, ClassNotFoundException{
        List<Cart_product> list= new ArrayList<>();
        conn =DBconnect.makeConnection();
        String query = "Select * From Cart_Table where phone = ?  ";
        ps = conn.prepareStatement(query);
        ps.setString(1, phone);
        rs = ps.executeQuery();

        while(rs.next()){
            Cart_product c = new Cart_product(rs.getString(1),rs.getString(2),rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6) , rs.getFloat(7), rs.getFloat(8));
            list.add(c);
        }
        return list;
    }

    public void addToCart(Cart_product c) throws SQLException, ClassNotFoundException {
        String query = "Insert into Cart_Table Values(?, ? ,? ,? ,? , ? , ?,?)";
        conn= DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, c.getPhone());
        ps.setString(2, c.getId());
        ps.setString(3, c.getName());
        ps.setString(4, c.getUrl());
        ps.setString(5, c.getSize());
        ps.setInt(6, c.getQuantity());
        ps.setFloat(7, c.getPrice());
        ps.setFloat(8, c.getTotal());
        
        ps.execute();
    }

    public void update(String phone, String id, String size, int quantity, Float total) throws SQLException, ClassNotFoundException {
        String query = "Update Cart_Table Set quantity = ? , total = ?  where phone = ? and id = ? and size = ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setInt(1, quantity);
        ps.setFloat(2, total);
        ps.setString(3, phone);
        ps.setString(4, id);
        ps.setString(5,  size);
        ps.executeUpdate();
        
    }

    public void delete(String phone, String id, String size) throws SQLException, ClassNotFoundException {
        String query = "Delete From Cart_Table where id = ? and phone = ? and size = ? ";
        conn = DBconnect.makeConnection();
        ps= conn.prepareStatement(query);
        ps.setString(1, id);
        ps.setString(2, phone); 
        ps.setString(3, size);
        ps.executeUpdate();
    }
    public void delete(String phone, String id) throws SQLException, ClassNotFoundException {
        String query = "Delete From Cart_Table where id = ? and phone = ?  ";
        conn = DBconnect.makeConnection();
        ps= conn.prepareStatement(query);
        ps.setString(1, id);
        ps.setString(2, phone); 
        ps.executeUpdate();
    }
}


