package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculateServlet", value = "/Calculate")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstOperand = Double.parseDouble(request.getParameter("firstOperand"));
        double secondOperand = Double.parseDouble(request.getParameter("secondOperand"));
        String operator = request.getParameter("operator");
        String result="";

        switch (operator){
            case "+" :
                result = ""+ (firstOperand+secondOperand);
                break;
            case "-" :
                result = "" +(firstOperand-secondOperand);
                break;
            case "*" :
                result = "" +(firstOperand*secondOperand);
                break;
            case "/" :
                if (secondOperand!=0){
                    result = "" + (firstOperand/secondOperand);
                }else {
                    try {
                        throw new RuntimeException("can't multi for 0");
                    }
                  catch (Exception e){
                        result = e.getMessage();
                  }
                }
                break;
        }

        request.setAttribute("result",result);
        request.getRequestDispatcher("calculational.jsp").forward(request,response);



    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
