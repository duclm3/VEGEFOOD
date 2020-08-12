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
public class User {
    int userId;
    String userName;
    String passW;
    String email;
    String address;
    String phone;
    boolean userStatus;

    public User(int userId, String userName, String passW, String email, String address, String phone, boolean userStatus) {
        this.userId = userId;
        this.userName = userName;
        this.passW = passW;
        this.email = email;
        this.address = address;
        this.phone = phone;
        this.userStatus = userStatus;
    }

    public User() {
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassW() {
        return passW;
    }

    public void setPassW(String passW) {
        this.passW = passW;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public boolean isUserStatus() {
        return userStatus;
    }

    public void setUserStatus(boolean userStatus) {
        this.userStatus = userStatus;
    }
    
}
