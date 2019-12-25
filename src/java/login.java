
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author abhishek
 */
public class login extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
       
         String s1=request.getParameter("user_id");
        String s2=request.getParameter("password");
        if(s1.equals("MNNIT")&&s2.equals("USER"))
        {
             response.sendRedirect("header.jsp");
        }
        else
        {
            out.println("<center>");
           out.println("<h1>Invalid ID and Password</h1>");
            //out.println("<a href="">Back to HOME</a>");
           out.println("</center>");
        }
        
        try {

            
            
            
        } catch(Exception e)
        {
            out.println(e);
        }
    }
}
