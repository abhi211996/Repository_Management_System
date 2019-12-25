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
public class complaint extends HttpServlet {

    
    Connection con;
        PreparedStatement ps;
       
 
  public void init(){
        try{
           
        String qr="insert into complaint values(?,?,?)";
        
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
        
       
        String s1=request.getParameter("id");
        String s2=request.getParameter("complaint_date");
        String s3=request.getParameter("comment");
        
        
         response.sendRedirect("header.jsp");
        try {
        
            
            ps.setString(1, s1); 
             ps.setString(2, s2);
            ps.setString(3, s3);
             ps.executeUpdate();
           
        
        }catch(Exception e)
        {
            out.println(e);
        }    
        }
    }
