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
public class Order {
    int OrderId;
    float amount;
    int quantity;
    String nameCustomer;
    String address;
    String email;
    String phone;
    String date;
    boolean status;

    public Order() {
    }

    public Order(int OrderId, float amount, int quantity, String nameCustomer, String address, String email, String phone, String date, boolean status) {
        this.OrderId = OrderId;
        this.amount = amount;
        this.quantity = quantity;
        this.nameCustomer = nameCustomer;
        this.address = address;
        this.email = email;
        this.phone = phone;
        this.date = date;
        this.status = status;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int OrderId) {
        this.OrderId = OrderId;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getNameCustomer() {
        return nameCustomer;
    }

    public void setNameCustomer(String nameCustomer) {
        this.nameCustomer = nameCustomer;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public boolean getStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }
    
}
