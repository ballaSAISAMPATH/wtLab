import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;

public class DynamicHtml extends HttpServlet{
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String name = req.getParameter("name");
        String password = req.getParameter("password");
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println( "name:"+name);
    }
}