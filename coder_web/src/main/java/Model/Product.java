package Model;

public class Product {
    private String id;
    private String name_product;
    private String type;
    private Float price;
    private String url;

    
    public Product(String id, String name_product, String type, Float price, String url) {
        this.id = id;
        this.name_product = name_product;
        this.type = type;
        this.price = price;
        this.url = url;
    }

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getName_product() {
        return name_product;
    }
    public void setName_product(String name_product) {
        this.name_product = name_product;
    }
    public String getType() {
        return type;
    }
    public void setType(String type) {
        this.type = type;
    }
    public float getPrice() {
        return price;
    }
    public void setPrice(Float price) {
        this.price = price;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
}
