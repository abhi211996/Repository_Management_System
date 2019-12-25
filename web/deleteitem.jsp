<%-- 
    Document   : deleteitem
    Created on : Apr 11, 2018, 1:34:50 PM
    Author     : abhishek
--%>



<%@page import="java.sql.*"%>
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
                 String value=request.getParameter("id");
                    int v=Integer.parseInt(value);
                    System.out.println("vvv " + v);
                     
                String sql = "delete from item where id="+v+"";
                st.executeUpdate(sql);
                 //st.executeUpdate(sql);

                			//String path = rs.getString("path");
        %>
<center>
        <table style="width:70%" border="20">
            <tr>
                <th>Car Name</th>
                <th>Seater</th>
                <th>Car_Number</th>
                <th>Model</th>
                <th>Mileage</th>
                <th>Car Photo</th>
                <th>shipment</th>
                
                <th></th>
               
                
                
            </tr>
            <tr>
                <td><%=v%></td>
            
            </tr>
        </table>
</center>
        <%
                
            } catch (Exception e) {
                out.println(e);
            }
        %>
    
    
    <script>
          if (confirm('Item deleted Successfully')) {
    // user clicked on Yes
             window.location.href="index.jsp";
       }
else {
    window.location.href="index.jsp";
    // user clicked on No
}
//        alert("Item deleted Sucessfully");
    </script>
    <%@include  file="footer.jsp" %>
    </body>
</html>
