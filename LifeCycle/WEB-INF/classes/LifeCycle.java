import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class LifeCycle extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Hello World</h1>");
    }
    public void destroy() {
        System.out.println("Servlet Destroyed");
    }
 
}