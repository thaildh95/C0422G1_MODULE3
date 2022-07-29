import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "DiscountServlet", value = "/Discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String  productDescription = request.getParameter("productDescription");
        double price = Double.parseDouble(request.getParameter("price"));
        double discountRate = Double.parseDouble(request.getParameter("discountRate"));
        double discountAmount =  price*discountRate*0.01;
        double discountPrice = price - discountAmount;
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");

        request.setAttribute("productDescription",productDescription);
        request.setAttribute("price",price);
        request.setAttribute("discountRate",discountRate);
        request.setAttribute("discountAmount",discountAmount);
        request.setAttribute("discountPrice",discountPrice);

        requestDispatcher.forward(request, response);
    }

}
