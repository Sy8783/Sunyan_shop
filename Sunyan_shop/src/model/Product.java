package model;

// 模拟商品类，实际中对应数据库实体类等更完善的结构
public class Product {
    private String id;
    private String name;
    private double price;
    private String imageUrl;

    public Product(String id, String name, double price, String imageUrl) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.imageUrl = imageUrl;
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public double getPrice() {
        return price;
    }

    public String getImageUrl() {
        return imageUrl;
    }
}

