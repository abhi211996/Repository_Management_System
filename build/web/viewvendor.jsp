<%-- 
    Document   : viewvendor
    Created on : Apr 8, 2018, 3:01:40 PM
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
        <title>List Of Vendors</title>
        <style>
            #bookbtn{
                padding:2px;
                text-align: center;
                margin-top: 30px;
                margin-left:30px;
              
            }
        </style>
    </head>
    <body>
    <center><h1>Information of Vendor</h1></center>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/repository_management", "root", "root");
                Statement st = con.createStatement();
                String sql = "SELECT * FROM vendor";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    //int id = rs.getInt("id");
                    String Id = rs.getString("vendor_id");
                    String item_name = rs.getString("name");
                    String vendor_id = rs.getString("address");
                    String date = rs.getString("mobile");
                    String cost = rs.getString("email");
                   
					//String path = rs.getString("path");
        %>
<center>
  
        <table style="width:70%" border="25">
            <tr>
                <th>Vendor ID</th>
                <th>Vendor Name</th>
                <th>Vendor Address</th>
                <th>Mobile Number</th>
                <th>Email ID</th>
            </tr>
            <tr>
                <td><%=Id%></td>
                <td><%=item_name%></td>
                <td><%=vendor_id%></td>
                <td><%=date%></td>
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
         <%@include  file="footer.jsp" %>
    </body>
</html>
