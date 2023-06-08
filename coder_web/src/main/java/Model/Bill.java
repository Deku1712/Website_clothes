package Model;


import java.sql.Timestamp;

public class Bill {
    private String phone;
    private String codeBill;
    private Timestamp date;

    public Bill(String phone, String codeBill, Timestamp date) {
        this.phone = phone;
        this.codeBill = codeBill;
        this.date = date;
    }
    
    public String getPhone() {
        return phone;
    }
    public String getCodeBill() {
        return codeBill;
    }
    public Timestamp getDate() {
        return date;
    }
    
    
}
