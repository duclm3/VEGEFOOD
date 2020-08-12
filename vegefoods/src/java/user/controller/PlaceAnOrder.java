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
import user.model.ProductModel;

/**
 *
 * @author Le Minh Duc
 */
@WebServlet(name = "PlaceAnOrder", urlPatterns = {"/user/PlaceAnOrder"})
public class PlaceAnOrder extends HttpServlet {

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
           request.setCharacterEncoding("UTF-8");
            HttpSession session = request.getSession();
           ProductModel prm = new ProductModel();
           String name = null;
           String address = null;
           String phone = null;
           String email = null;
            try {
                name = request.getParameter("name");
                address = request.getParameter("address");
                phone = request.getParameter("phone");
                email = request.getParameter("email");
            } catch (Exception e) {
                e.printStackTrace();
            }
            
            boolean check = prm.InsertOrder(CartController.totalAmount, CartController.countCart, name, address, phone, email);
            List<Cart>  listCart = new ArrayList<>();
            session.setAttribute("listCart",listCart);
            CartController.countCart= 0;
            CartController.totalAmount=0;
            String thongbao="";
            if(check){
                thongbao = "Order Success";
            }else{
               thongbao = "Order failed";
            }
              request.setAttribute("thongbao",thongbao);
            request.getRequestDispatcher("afterOrder.jsp").include(request, response);
        }
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
