<%-- 
    Document   : view
    Created on : Apr 8, 2018, 8:33:34 AM
    Author     : abhishek
--%>


<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include  file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of Item</title>
        <style>
            #bookbtn{
                padding:2px;
                text-align: center;
                margin-top: 30px;
                margin-left:30px;
              
            }
        </style>
    </head>
    <body >
         <center>  <h1>Total Items</h1></center><br>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/repository_management", "root", "root");
                Statement st = con.createStatement();
                String sql = "SELECT * FROM item";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    //int id = rs.getInt("id");
                    String Id = rs.getString("id");
                    String item_name = rs.getString("item_name");
                    String vendor_id = rs.getString("vendor_id");
                    String date = rs.getString("purchase_date");
                    String cost = rs.getString("cost");
                    String install= rs.getString("install_location");
                    String shipment= rs.getString("shipment_cost");
					//String path = rs.getString("path");
        %>
    
<center>
 
        <table style="width:70%" border="25">
            
            <tr>
                <th>Id</th>
                <th>Item Name</th>
                <th>Vendor ID</th>
                <th>Date</th>
                <th>Cost</th>
                <th>Install</th>
                <th>shipment</th>
      
            </tr>
            <tr>
                <td><%=Id%></td>
                <td><%=item_name%></td>
                <td><%=vendor_id%></td>
                <td><%=date%></td>
		<td><%=cost%></td>
                <td><%=install%></td>
                <td><%=shipment%></td>
                
            </tr>
        </table>
</center>
        <%
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
       <%@include  file="footer.jsp" %>
    </body>
</html>
