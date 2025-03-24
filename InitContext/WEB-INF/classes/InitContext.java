
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class InitContext extends HttpServlet{
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String initparam1= getInitParameter("student1");
        ServletContext context=getServletContext();
        String contextparam2=context.getInitParameter("student2");
        response.setContentType("text/html");
        PrintWriter out= response.getWriter();
        out.println("one: "+initparam1);
        out.println("two: "+contextparam2);
    }
}