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
public class addvender extends HttpServlet {
  Connection con;
        PreparedStatement ps;
         PreparedStatement ps1;
          PreparedStatement ps2;
         int uniqid;
 
  public void init(){
        try{
           
        String qr="insert into vendor values(?,?,?,?,?)";
        
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
              String qr1="select id from uniid";
              
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
         
        String s1=request.getParameter("name");
        String s2=request.getParameter("address");
        String s3=request.getParameter("mobile");
        String s4=request.getParameter("email");
        
        response.sendRedirect("header.jsp");

        try {
            
            
             ps.setInt(1, uniqid);
            ps.setString(2, s1); ps.setString(3, s2);
            ps.setString(4, s3); ps.setString(5, s4);
            ps.executeUpdate();
            
            
             int xx= uniqid+1;
                String qr3="update uniid set id="+ xx + " ";
             ps2=con.prepareStatement(qr3); 
             
             ps2.executeUpdate();
        
        } catch(Exception e)
        {
            out.println(e);
        }
    }
}