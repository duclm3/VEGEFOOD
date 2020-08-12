/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package admin.controller;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import user.model.ProductModel;

/**
 *
 * @author Le Minh Duc
 */
@WebServlet(name = "InsertProduct", urlPatterns = {"/admin/InsertProduct"})
@MultipartConfig
public class InsertProduct extends HttpServlet {
private final String UPLOAD_DIRECTORY = "C:\\Users\\Le Minh Duc\\Desktop\\CTDL JAVA\\VEGEFOODS\\web\\user\\images";

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
        request.setCharacterEncoding("UTF-8");
        final String path = "C:\\Users\\Le Minh Duc\\Desktop\\CTDL JAVA\\VEGEFOODS\\web\\user\\images";
        final Part filePart = request.getPart("file");
        final String fileName = getFileName(filePart);
        OutputStream out = null;
        InputStream filecontent = null;
        final PrintWriter writer = response.getWriter();
        String productId = "";
        String nameProduct="";
        String price = "";
        String Groupproduct_Id = "";
        String imageLink ="";
        String descriptions ="";
        String quantity ="";
        String proStatus = "";
        String y = "Chưa vào";
        try {
            productId = request.getParameter("productId");
            y+="1";
            nameProduct = request.getParameter("nameProduct");
            y+="2";
            price = request.getParameter("price");
            y+="3";
            Groupproduct_Id = request.getParameter("GroupProduct_Id");
            y+="4";
            descriptions = request.getParameter("descriptions");
            y+="5";
            quantity = request.getParameter("quantity");
            y+="6";
            proStatus = request.getParameter("proStatus");
            y+="7";
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    try {
        out = new FileOutputStream(new File(path + File.separator + fileName));
        filecontent = filePart.getInputStream();
        imageLink = "../user/images/"+fileName;
        int read = 0;
        final byte[] bytes = new byte[1024];
        while ((read = filecontent.read(bytes)) != -1) {
            out.write(bytes, 0, read);
        }
        //writer.println(fileName + " created at " + path);
         ProductModel prm = new ProductModel();
    boolean check = prm.InsertProduct(productId, nameProduct, price, Groupproduct_Id, imageLink, descriptions, quantity, proStatus);
//    request.setAttribute("message", "Upload has been done successfully!" +check);
    request.getRequestDispatcher("home.jsp").forward(request, response);
    } catch (FileNotFoundException fne) {
        writer.println("Error in file upload  ERROR:" + fne.getMessage());
    } finally {
        if (out != null) {
            out.close();
        }
        if (filecontent != null) {
            filecontent.close();
        }
        if (writer != null) {
            writer.close();
        }
    }
   
}


private String getFileName(final Part part) {
    final String partHeader = part.getHeader("content-disposition");
    for (String content : part.getHeader("content-disposition").split(";")) {
        if (content.trim().startsWith("filename")) {
            return content.substring(
                    content.indexOf('=') + 1).trim().replace("\"", "");
        }
    }
    return null;
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
