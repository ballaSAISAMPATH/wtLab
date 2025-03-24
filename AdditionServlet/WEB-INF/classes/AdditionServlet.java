import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class AdditionServlet extends HttpServlet{
    protected void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
        res.setContentType("text/html");
        
        PrintWriter out=res.getWriter();
        out.println("");
    }
}


// opt/tomcat/bin ./startup.sh
// java -cp "/opt/tomcat/lib/jakarta.servlet-api.6.0.0.jar" filenamr.java