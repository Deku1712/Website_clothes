package Controller.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class ProductDetailDAO {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public void updateQuantity(String id , int quantitySale) throws SQLException, ClassNotFoundException{
        int quantity = new ProductDAO().getQuantityById(id);
        conn = DBconnect.makeConnection();
        String query = "Update ProductDetail_Table set quantity = ? Where id = ? ";
        ps = conn.prepareStatement(query);
        ps.setInt(1, quantity-quantitySale);
        ps.setString(2, id);
        ps.executeUpdate();
    }
}
