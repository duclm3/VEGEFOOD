/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import user.entity.Order;
import user.entity.Product;
import user.util.ConnectionDB;

/**
 *
 * @author Le Minh Duc
 */
public class ProductModel {
    public List<Product> getALLProduct(){
        Connection con = null;
        List<Product> listpro = new ArrayList<>();
        String sql = "SELECT * FROM Product WHERE proStatus = 1";
        try {
            con = ConnectionDB.openConnection();
            Statement stm = con.createStatement();//tạo đối tượng Statement để thực hiện truy vấn
            ResultSet rs= stm.executeQuery(sql);
            while(rs.next()){
                Product pro = new Product();
                pro.setProductId(rs.getString("ProductId"));
                pro.setProductName(rs.getString("NameProduct"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setGroupProduct_Id(rs.getString("GroupProduct_Id"));
                pro.setImageLink(rs.getString("ImageLink"));
                pro.setDescriptions(rs.getString("Descriptions"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setProStatus(rs.getBoolean("proStatus"));
                listpro.add(pro);
            }
         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listpro;
    }
     public List<Product> getALLProductAdmin(){
        Connection con = null;
        List<Product> listpro = new ArrayList<>();
        String sql = "SELECT * FROM Product";
        try {
            con = ConnectionDB.openConnection();
            Statement stm = con.createStatement();//tạo đối tượng Statement để thực hiện truy vấn
            ResultSet rs= stm.executeQuery(sql);
            while(rs.next()){
                Product pro = new Product();
                pro.setProductId(rs.getString("ProductId"));
                pro.setProductName(rs.getString("NameProduct"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setGroupProduct_Id(rs.getString("GroupProduct_Id"));
                pro.setImageLink(rs.getString("ImageLink"));
                pro.setDescriptions(rs.getString("Descriptions"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setProStatus(rs.getBoolean("proStatus"));
                listpro.add(pro);
            }
         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listpro;
    }
    public List<Product> getALLRCD(){
        Connection con = null;
        List<Product> listpro = new ArrayList<>();
        String sql = "SELECT * FROM Product WHERE GroupProduct_Id = 'GR01' AND proStatus = 1";
        try {
            con = ConnectionDB.openConnection();
            Statement stm = con.createStatement();//tạo đối tượng Statement để thực hiện truy vấn
            ResultSet rs= stm.executeQuery(sql);
            while(rs.next()){
                Product pro = new Product();
                pro.setProductId(rs.getString("ProductId"));
                pro.setProductName(rs.getString("NameProduct"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setGroupProduct_Id(rs.getString("GroupProduct_Id"));
                pro.setImageLink(rs.getString("ImageLink"));
                pro.setDescriptions(rs.getString("Descriptions"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setProStatus(rs.getBoolean("proStatus"));
                listpro.add(pro);
            }
         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listpro;
    }
    public List<Product> getALLTC(){
        Connection con = null;
        List<Product> listpro = new ArrayList<>();
        String sql = "SELECT * FROM Product WHERE GroupProduct_Id = 'GR02' AND proStatus = 1";
        try {
            con = ConnectionDB.openConnection();
            Statement stm = con.createStatement();
            ResultSet rs= stm.executeQuery(sql);
            while(rs.next()){
                Product pro = new Product();
                pro.setProductId(rs.getString("ProductId"));
                pro.setProductName(rs.getString("NameProduct"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setGroupProduct_Id(rs.getString("GroupProduct_Id"));
                pro.setImageLink(rs.getString("ImageLink"));
                pro.setDescriptions(rs.getString("Descriptions"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setProStatus(rs.getBoolean("proStatus"));
                listpro.add(pro);
            }
         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listpro;
    }
    public List<Product> getALLNE(){
        Connection con = null;
        List<Product> listpro = new ArrayList<>();
        String sql = "SELECT * FROM Product WHERE GroupProduct_Id = 'GR03' AND proStatus = 1";
        try {
            con = ConnectionDB.openConnection();
            Statement stm = con.createStatement();
            ResultSet rs= stm.executeQuery(sql);
            while(rs.next()){
                Product pro = new Product();
                pro.setProductId(rs.getString("ProductId"));
                pro.setProductName(rs.getString("NameProduct"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setGroupProduct_Id(rs.getString("GroupProduct_Id"));
                pro.setImageLink(rs.getString("ImageLink"));
                pro.setDescriptions(rs.getString("Descriptions"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setProStatus(rs.getBoolean("proStatus"));
                listpro.add(pro);
            }
         
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listpro;
    }
    public Product getProductById(String productId){
        Connection con = null;
        Product pro = new Product();
        String sql = "SELECT * FROM Product WHERE ProductId =? AND proStatus = 1";
        try {
            con = ConnectionDB.openConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, productId);
            ResultSet rs= stm.executeQuery();
            if(rs.next()){
                pro.setProductId(rs.getString("ProductId"));
                pro.setProductName(rs.getString("NameProduct"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setGroupProduct_Id(rs.getString("GroupProduct_Id"));
                pro.setImageLink(rs.getString("ImageLink"));
                pro.setDescriptions(rs.getString("Descriptions"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setProStatus(rs.getBoolean("proStatus"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pro;
    }
    public boolean InsertOrder(float amout,int quantity,String name,String address,String phone,String email){
        Connection con = null;
        boolean check = true;
        Order ord = new Order();
        String sql = "INSERT INTO Orders VALUES(?,?,?,?,?,?,GETDATE(),1)";
        try {
            con = ConnectionDB.openConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setFloat(1, amout);
            stm.setInt(2, quantity);
            stm.setString(3, name);
            stm.setString(4, address);
            stm.setString(5, email);
            stm.setString(6, phone);
            int n = stm.executeUpdate();
            if(n==0){
                check = false;
            }
        } catch (Exception e) {
           e.printStackTrace();
           check = false;
        }
        return check;
    }
    public boolean InsertProduct(String productId, String nameProduct,String price,String groupProduct_id,String imageLink,String description,String quantity,String proStatus){
        Connection con = null;
        boolean check = true;
        String sql = "INSERT INTO Product VALUES(?,?,?,?,?,?,?,?)";
         try {
            con = ConnectionDB.openConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, productId);
            stm.setString(2, nameProduct);
            stm.setString(3, price);
            stm.setString(4, groupProduct_id);
            stm.setString(5, imageLink);
            stm.setString(6, description);
            stm.setString(7, quantity);
            stm.setString(8, proStatus);
            int n = stm.executeUpdate();
            if(n==0){
                check = false;
            }
        } catch (Exception e) {
           e.printStackTrace();
           check = false;
        }
         return check;
    }
     public boolean UpđateProduct(Product pro){
        Connection con = null;
        boolean check = true;
        String sql = "UPDATE Product SET "
                + " NameProduct=?, Price=?, GroupProduct_Id=?, ImageLink=?, Descriptions=?, Quantity=?, proStatus=? WHERE productId = ?";
         try {
            con = ConnectionDB.openConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, pro.getProductName());
            stm.setFloat(2, pro.getPrice());
            stm.setString(3, pro.getGroupProduct_Id());
            stm.setString(4, pro.getImageLink());
            stm.setString(5, pro.getDescriptions());
            stm.setInt(6, pro.getQuantity());
            stm.setBoolean(7, pro.getProStatus());
            stm.setString(8, pro.getProductId());
            int n = stm.executeUpdate();
            if(n==0){
                check = false;
            }
        } catch (Exception e) {
           e.printStackTrace();
           check = false;
        }
         return check;
    }
    public boolean DeleteProduct(String productId){
          Connection con = null;
        boolean check = true;
        String sql = "DELETE FROM Product WHERE ProductId = ?";
         try {
            con = ConnectionDB.openConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1,productId);
            int n = stm.executeUpdate();
            if(n==0){
                check = false;
            }
        } catch (Exception e) {
           e.printStackTrace();
           check = false;
        }
         return check;
    }
    public Product getProductByIdAmin(String productId){
        Connection con = null;
        Product pro = new Product();
        String sql = "SELECT * FROM Product WHERE ProductId =?";
        try {
            con = ConnectionDB.openConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, productId);
            ResultSet rs= stm.executeQuery();
            if(rs.next()){
                pro.setProductId(rs.getString("ProductId"));
                pro.setProductName(rs.getString("NameProduct"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setGroupProduct_Id(rs.getString("GroupProduct_Id"));
                pro.setImageLink(rs.getString("ImageLink"));
                pro.setDescriptions(rs.getString("Descriptions"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setProStatus(rs.getBoolean("proStatus"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return pro;
    }
    public boolean KiemTraDangNhap(String tk, String mk){
        Connection con = null;
        boolean check = true;
        String sql = "SELECT * FROM Users WHERE Email=? AND passW = ?";
        try {
             con = ConnectionDB.openConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, tk);
            stm.setString(2, mk);
            ResultSet rs = stm.executeQuery();
            if(rs.next())//nếu lấy được kết quả
                return true;
            else
                return false;
        } catch (SQLException ex) {
          ex.printStackTrace();
            return false;
        }
    }
    public Product getProductByName(String nameProductt){
        Connection con = null;
        Product pro = null;
        String sql = "SELECT * FROM Product WHERE NameProduct = ? AND proStatus = 1";
        try {
            con = ConnectionDB.openConnection();
            PreparedStatement stm = con.prepareStatement(sql);
            stm.setString(1, nameProductt);
            ResultSet rs = stm.executeQuery();
            if(rs.next()){
                pro = new Product();
                pro.setProductId(rs.getString("ProductId"));
                pro.setProductName(rs.getString("NameProduct"));
                pro.setPrice(rs.getFloat("Price"));
                pro.setGroupProduct_Id(rs.getString("GroupProduct_Id"));
                pro.setImageLink(rs.getString("ImageLink"));
                pro.setDescriptions(rs.getString("Descriptions"));
                pro.setQuantity(rs.getInt("Quantity"));
                pro.setProStatus(rs.getBoolean("proStatus"));
            }else{
                pro = null;
            }
        } catch (SQLException ex) {
          ex.printStackTrace();
        }
        return pro;
    }
    public List<Order> getAllOrder(){
        Connection con = null;
        List<Order> listorder = new ArrayList<>();
        String sql = "SELECT * FROM Orders";
        try {
            con = ConnectionDB.openConnection();
            Statement stm = con.createStatement();//tạo đối tượng Statement để thực hiện truy vấn
            ResultSet rs= stm.executeQuery(sql);
            while(rs.next()){
                Order order = new Order();
                order.setOrderId(rs.getInt("OrderId"));
                order.setAmount(rs.getFloat("Amount"));
                order.setQuantity(rs.getInt("Quantity"));
                order.setNameCustomer(rs.getString("NameCustomer"));
                order.setAddress(rs.getString("Addresss"));
                order.setEmail(rs.getString("Email"));
                order.setPhone(rs.getString("Phone"));
                order.setDate(rs.getString("OrderDate"));
                order.setStatus(rs.getBoolean("OrderStatus"));
                listorder.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return listorder;
    }
    public static void main(String[] args) {
        ProductModel prm = new ProductModel();
        Product ceck = prm.getProductByName("Bắp cải tím");
        List<Order> or = prm.getAllOrder();
        for (Order order : or) {
            System.out.println(order.getOrderId());
        }
       
    }
}
