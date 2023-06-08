package Controller.DB;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;




public class BillDAO  {
    Connection conn;
    PreparedStatement ps;
    ResultSet rs;

    public void insertBill(String phone , String codeBill) throws SQLException, ClassNotFoundException{
        conn = DBconnect.makeConnection();
        String query = "Insert into Bill_Table  Values(?, ? ,CURRENT_TIMESTAMP )";
        ps = conn.prepareStatement(query);
        ps.setString(1, phone);
        ps.setString(2, codeBill);
        ps.executeUpdate();
        
        
        
    }

    public List<String> getCodeBillinMonth() throws ClassNotFoundException, SQLException{
        Calendar calendar = Calendar.getInstance();
        int month = calendar.get(Calendar.MONTH) + 1;
        conn = DBconnect.makeConnection();
        String query = "Select codeBill From Bill_Table Where Month(dateBill) = ?";
        ps = conn.prepareStatement(query);
        ps.setInt(1, month);
        rs= ps.executeQuery();
        List<String> list = new ArrayList<>();
        while(rs.next()){
            list.add(rs.getString(1));
        }
        return list;
    }

    public List<List<String>> getEarningByItems() throws ClassNotFoundException, SQLException{
        List<List<String>> list_product_follow_codeID = new ArrayList<>();
        
        String query = "Select Bill_Table.dateBill, Bill_Table.codeBill, DetailBill_Table.nameProduct, DetailBill_Table.quantity, DetailBill_Table.priceProduct, DetailBill_Table.total From Bill_Table, DetailBill_Table where Bill_Table.codeBill = DetailBill_Table.codebill Order By Bill_Table.dateBill DESC";
        conn = DBconnect.makeConnection();
        ps = conn.prepareStatement(query);
        rs= ps.executeQuery();
        while(rs.next()){
            List<String> codeBill_product = new ArrayList<>();
            codeBill_product.add(rs.getString(1));
            codeBill_product.add(rs.getString(2));
            codeBill_product.add(rs.getString(3));
            codeBill_product.add(String.valueOf(rs.getInt(4)));
            codeBill_product.add(String.valueOf(rs.getFloat(5)));
            codeBill_product.add(String.valueOf(rs.getFloat(6)));
            list_product_follow_codeID.add(codeBill_product);
        }
        return list_product_follow_codeID;
    }
    

    public List<List<String>> getListVIP() throws ClassNotFoundException, SQLException{
        conn = DBconnect.makeConnection();
        List<List<String>> listVIP = new ArrayList<>();
        String query="Select Customer_Table.name_customer,  Sum(DetailBill_Table.total) as total from Bill_Table, DetailBill_Table , Customer_Table where Bill_Table.codeBill = DetailBill_Table.codeBill and Bill_Table.phone = Customer_Table.phone Group by Customer_Table.name_customer order by total desc";
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
        while(rs.next() ){
            List<String> vip = new ArrayList<>();
            vip.add(rs.getString(1));
            vip.add(String.valueOf(rs.getFloat(2)));
            listVIP.add(vip);
        }
        return listVIP;
    }

    public List<List<String>> getListBillByPhone(String phone) throws SQLException, ClassNotFoundException {
        List<List<String>> listBill = new ArrayList<>();
        conn = DBconnect.makeConnection();
        String query = "Select Bill_Table.codeBill, Bill_Table.dateBill, Sum(DetailBill_Table.total) as total From Bill_Table, DetailBill_Table Where Bill_Table.codeBill = DetailBill_Table.codeBill and Bill_Table.phone = ? Group by Bill_Table.codeBill ,Bill_Table.dateBill Order by Bill_Table.dateBill DESC";
        ps = conn.prepareStatement(query);
        ps.setString(1, phone);
        rs = ps.executeQuery();
        while(rs.next()){
            List<String> bill = new ArrayList<>();
            bill.add(rs.getString(1));
            bill.add(rs.getString(2));
            bill.add(String.valueOf(rs.getFloat(3)));
            listBill.add(bill);
        }
        return listBill;
    }

    
}
