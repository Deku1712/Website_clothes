package Model;

public class Order {
    private String codebill;
    private String nameProduct;
    private int quantity;
    private float price;
    private float total;

    
    public Order(String codebill, String nameProduct, int quantity, float price, float total) {
        this.codebill = codebill;
        this.nameProduct = nameProduct;
        this.quantity = quantity;
        this.price = price;
        this.total = total;
    }


    public String getCodebill() {
        return codebill;
    }
    public String getNameProduct() {
        return nameProduct;
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
