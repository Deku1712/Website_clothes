package Model;

public class Cart_product {
    private String phone;
    private String id;
   


    private String name;
    private String url;
    private String size;
    private int quantity;
    private float price;
    private float total;


    public Cart_product( String phone ,String id,String name, String url, String size, int quantity, float price , float total) {

        this.phone = phone;
        this.id = id;
        this.name = name;
        this.url = url;
        this.size = size;
        this.quantity = quantity;
        this.price = price;
        this.total = total;
        
    }
    

    public String getPhone() {
        return phone;
    }
    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }


    public String getUrl() {
        return url;
    }


    public String getSize() {
        return size;
    }


    public int getQuantity() {
        return quantity;
    }


    public float getPrice() {
        return price;
    }


    public float getTotal() {
        return total;
    }


   
}
