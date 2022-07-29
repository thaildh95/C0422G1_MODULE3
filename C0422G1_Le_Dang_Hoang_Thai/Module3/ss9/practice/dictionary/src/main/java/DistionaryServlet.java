import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "DistionaryServlet", value = "/DistionaryServlet")
public class DistionaryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        Map<String, String> dictionary = new HashMap<>();
        dictionary.put("hello", "xin chao");
        dictionary.put("apple", "qua tao");
        dictionary.put("orange", "qua cam");
        dictionary.put("cat", "con meo");
        dictionary.put("dog", "con chó");
        dictionary.put("car", "xe oto");
        dictionary.put("bike", "xe dap");
        dictionary.put("motobike", "xe may");
        dictionary.put("book", "quyen sach");
        dictionary.put("computer", "may tinh");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("result.jsp");
        String search = request.getParameter("txtSearch");
        String result = dictionary.get(search);

        if (result != null) {
            request.setAttribute("word", search);
            request.setAttribute("translate", result);

        } else {
            result = "khong tim thay";
            request.setAttribute("word", result);

        }
        requestDispatcher.forward(request, response);
    }

}
