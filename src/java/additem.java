/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

/**
 *
 * @author abhishek
 */
public class additem extends HttpServlet {
      Connection con;
        PreparedStatement ps;
         PreparedStatement ps1;
          PreparedStatement ps2;
         int uniqid;
 
  public void init(){
        try{
           
        String qr="insert into item values(?,?,?,?,?,?,?)";
        
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/repository_management","root","root");
        ps=con.prepareStatement(qr);        
        }catch(Exception e){}
        
  }
  
 public void destroy(){
        try{
            con.close();
        }catch(Exception e){}
    }
 

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        
        
        
        
         try{
              String qr1="select id from uniqueid";
              
               ps1=con.prepareStatement(qr1); 
         
            ResultSet rs = ps1.executeQuery();
             while(rs.next())
             {
                 uniqid = rs.getInt("id");
             }
             
              
         }
         catch(Exception e){
             System.out.println("error in query" + e);
             
         }
         
         
         
        String s1=request.getParameter("item_name");
        String s2=request.getParameter("vendor_id");
        String s3=request.getParameter("purchase_date");
        String s4=request.getParameter("cost");
        String s5=request.getParameter("install_location");
        String s6=request.getParameter("shipment_cost");
        // String comId=IDgenerate.NEWID(s3,s1);
       response.sendRedirect("header.jsp");
        try {
            
             ps.setInt(1, uniqid);
            ps.setString(2, s1); ps.setString(3, s2);
            ps.setString(4, s3); ps.setString(5, s4);
            ps.setString(6, s5); ps.setString(7, s6);
            ps.executeUpdate();
            
            
             int xx= uniqid+1;
                String qr3="update uniqueid set id="+ xx + " ";
             ps2=con.prepareStatement(qr3); 
             
             ps2.executeUpdate();
        
        }catch(Exception e)
        {
            out.println(e);
        }
    }
}
