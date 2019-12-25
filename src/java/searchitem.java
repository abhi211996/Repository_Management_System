import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;

public class searchitem extends HttpServlet{ 

        public void service(HttpServletRequest request, HttpServletResponse response)
throws ServletException,IOException{
response.setContentType("text/html");
PrintWriter out = response.getWriter();

System.out.println("MySQL Connect Example.");
Connection conn = null;


Statement st;
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/car_rental_system","root","root");
System.out.println("Connected to the database");
String name = request.getParameter("pid");
String query = "select * from item where id LIKE '"+name+"%'";
st = conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.println("<table border='1'><tr><th>Row Num</th><th>Item Code</th><th>Item Name</th><th>Item Price</th></tr>");
while(rs.next()){

out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
}
out.println("</table>");
conn.close();
System.out.println("Disconnected from database");
} catch (Exception e) {
e.printStackTrace();
}
}
}