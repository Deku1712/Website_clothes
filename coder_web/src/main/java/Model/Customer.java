package Model;

public class Customer {
    private String phone;
    private String name_customer;
    private String address_customer;

    public Customer(String phone, String name_customer, String address_customer) {
        this.phone = phone;
        this.name_customer = name_customer;
        this.address_customer = address_customer;
    }

    public String getPhone() {
        return phone;
    }

    public String getName_customer() {
        return name_customer;
    }

    public String getAddress_customer() {
        return address_customer;
    }

    

    
}
