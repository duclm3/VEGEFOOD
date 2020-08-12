/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.entity;

/**
 *
 * @author Le Minh Duc
 */
public class Product {
   String productId;
   String productName;
   String GroupProduct_Id;
   float price;
   String imageLink;
   String descriptions;
   int quantity;
   boolean proStatus;
    public Product() {
    }

    public Product(String productId, String productName, String GroupProduct_Id, float price, String imageLink, String descriptions, int quantity, boolean proStatus) {
        this.productId = productId;
        this.productName = productName;
        this.GroupProduct_Id = GroupProduct_Id;
        this.price = price;
        this.imageLink = imageLink;
        this.descriptions = descriptions;
        this.quantity = quantity;
        this.proStatus = proStatus;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getGroupProduct_Id() {
        return GroupProduct_Id;
    }

    public void setGroupProduct_Id(String GroupProduct_Id) {
        this.GroupProduct_Id = GroupProduct_Id;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImageLink() {
        return imageLink;
    }

    public void setImageLink(String imageLink) {
        this.imageLink = imageLink;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public boolean getProStatus() {
        return proStatus;
    }

    public void setProStatus(boolean proStatus) {
        this.proStatus = proStatus;
    }
    
}
