package Controller.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Product;

public class ProductDAO {
    Connection conn =null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Product> getListProductFromDB() throws ClassNotFoundException, SQLException{
        List<Product> list = new ArrayList<>();
        conn = DBconnect.makeConnection();
        String query = "Select * From Product_Table";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();

        while(rs.next()){
            Product p = new Product(rs.getString(1), rs.getString(2), rs.getString(3), rs.getFloat(4), rs.getString(5));
            list.add(p);
        }
        return list;
        
    }

    public Product getProductFromDB(String id) throws SQLException, ClassNotFoundException{
        List<Product> list = getListProductFromDB();
        for ( int i = 0 ; i < list.size(); i++){
            if (list.get(i).getId().equals(id)){
                return  list.get(i);
            }
        }
        return null;
    }

    public int getQuantityById(String id) throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        int quanity = 0 ; 
        String query = "Select ProductDetail_Table.quantity From Product_Table , ProductDetail_Table where Product_Table.id = ProductDetail_Table.id  and Product_Table.id = ?";
        ps = conn.prepareStatement(query);
        ps.setString(1, id);
        rs= ps.executeQuery();
        while(rs.next()){
            quanity= rs.getInt(1);

        }
        return quanity;
    }
    
    
}
