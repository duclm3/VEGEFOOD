/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package user.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import user.entity.Cart;
import user.entity.Product;
import user.model.ProductModel;

/**
 *
 * @author Le Minh Duc
 */
@WebServlet(name = "CartController", urlPatterns = {"/user/CartController"})
public class CartController extends HttpServlet {
public static int countCart = 0;
public static float totalAmount = 0;
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           
           HttpSession session = request.getSession();
           List<Cart> listCart = (List<Cart>)session.getAttribute("listCart");
           ProductModel proMod = new ProductModel();
           String productId = null;
           Product pro = null;
            try {
                productId = request.getParameter("productId");
                pro = proMod.getProductById(productId);
            } catch (Exception e) {
                e.printStackTrace();
            }
 
            int quantt = 0;
            try {
                quantt = Integer.parseInt(request.getParameter("quantitys")); 
            } catch (Exception e) {
                quantt = 0;
                e.printStackTrace();
            }
            if(listCart==null){
                listCart = new ArrayList<>();
                Cart cart = new Cart();
                if(quantt>0){
                    cart = new Cart(pro,quantt);
                }else{
                    cart = new Cart(pro,1);
                }
                listCart.add(cart);
            }else{
                boolean check = false;
                for (int i = 0; i < listCart.size(); i++) {
                     if(listCart.get(i).getPro().getProductId().equals(productId)){
                        check = true;
                        if(quantt>0){
                            listCart.get(i).setQty(listCart.get(i).getQty()+quantt);
                        }else{
                            listCart.get(i).setQty(listCart.get(i).getQty()+1);
                        }
                        break;
                     }
                }
                if(!check){
                    Cart cart = new Cart();
                    if(quantt>0){
                        cart = new Cart(pro,quantt); 
                    }else{
                        cart = new Cart(pro,1);
                    }
                    listCart.add(cart);
                }
            }
            countCart= listCart.size();
            totalAmount = calTotalAmout(listCart);
            session.setAttribute("listCart", listCart);
            session.setAttribute("totalAmount", calTotalAmout(listCart));
            session.setAttribute("countCart", countCart);
//             listCart = new ArrayList<>();
            response.sendRedirect("Blank");
            //request.getRequestDispatcher("cart.jsp").include(request, response);
        }
    }
    public static float calTotalAmout(List<Cart> listCart){
        float totalAmount = 0;
        for (Cart cart : listCart) {
            totalAmount += cart.getQty()* cart.getPro().getPrice();
        }
        return totalAmount;
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
