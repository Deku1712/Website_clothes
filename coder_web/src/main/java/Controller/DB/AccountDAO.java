package Controller.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Account;

public class AccountDAO {
    Connection conn =null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Account> getListAccountFromDB() throws ClassNotFoundException, SQLException{
        List<Account> list= new ArrayList<>();
        conn =DBconnect.makeConnection();
        String query = "Select * From Account_Table ";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();

        while(rs.next()){
            Account acc = new Account(rs.getString(1), rs.getString(2),rs.getString(3));
            list.add(acc);
        }
        return list;

    }
    public void insertAccount( String user, String pass) throws ClassNotFoundException, SQLException{
        String query = "Insert into Account_Table VALUES(? , ? , ?) ";
        conn =DBconnect.makeConnection();
        PreparedStatement stsm = conn.prepareStatement(query);
        stsm.setString(1, user);
        stsm.setString(2, pass);
        stsm.setString(3, "cus");
        stsm.executeUpdate();
            
    }
    
    public void Update(String acc, String type) throws SQLException, ClassNotFoundException{
        String query = "Update Account_Table Set type = ? where phone = ?";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, type);
        ps.setString(2, acc);
        ps.executeUpdate();
    }

    public void Delete (String acc) throws SQLException, ClassNotFoundException{
        String query = "Delete from Account_Table where phone = ?";
        conn =DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        ps.setString(1, acc);
        ps.executeUpdate();
    }
     
}
