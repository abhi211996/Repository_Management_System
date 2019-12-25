<%-- 
    Document   : searchitem
    Created on : Apr 10, 2018, 3:56:42 PM
    Author     : abhishek
--%>
 
<%@include  file="header.jsp" %>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Image Show</title>
        <style>
            #bookbtn{
                padding:2px;
                text-align: center;
                margin-top: 30px;
                margin-left:30px;
              
            }
        </style>
    </head>
    <body style="background:linear-gradient(-90deg,#c8e5bc,highlight)">
       
        <%
            try {
                  
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/repository_management", "root", "root");
                Statement st = con.createStatement();
                 String value=request.getParameter("pid");
                    int v=Integer.parseInt(value);
                   // System.out.println("vvv " + v);
                     
                String sql = "select * from item where id="+v+"";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    //String car_name = rs.getString("id");
                   String seater = rs.getString("item_name");
                    String car_number = rs.getString("vendor_id");
                    String model = rs.getString("purchase_date");
                    String mileage = rs.getString("cost");
                    String filename= rs.getString("install_location");
                    String cost= rs.getString("shipment_cost");
					//String path = rs.getString("path");
        %>
<center>
        <table style="width:70%" border="20">
            <tr>
                <th>Item ID</th>
                <th>Item Name</th>
                <th>Vendor ID</th>
                <th>Date</th>
                <th>Cost</th>
                <th>Installed Location</th>
                <th>Shipment Cost</th>
              
            </tr>
            <tr>
                <td><%=v%></td>
                
  <td><%=seater%></td>
                <td><%=car_number%></td>
				<td><%=model%></td>
				<td><%=mileage%></td>
				<td><%=filename%></td>
				<td><%=cost%></td>
			
           
            </tr>
        </table>
</center>
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %> 
    </body>
</html>
