package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculateServlet", value = "/CalculateServlet")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstOperand = Double.parseDouble(request.getParameter("firstOperand"));
        double secondOperand = Double.parseDouble(request.getParameter("secondOperand"));
        char operator = request.getParameter("operator").charAt(0);

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("calculational.jsp");
        request.getParameter("firstOperand");
        request.getParameter("secondOperand");
        request.getParameter("operator");


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
