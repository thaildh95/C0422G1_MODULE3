import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Servlet", value = "/login")
public class Servlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String str = "xin chao";
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("new_page.jsp");
        request.setAttribute("customer" ,str);
        requestDispatcher.forward(request,response);
    }
}
