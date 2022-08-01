package controller;

import model.User;
import repository.impl.UserRepositoryImpl;
import service.IUser;
import service.impl.UserImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/User")
public class UserServlet extends HttpServlet {
    private static IUser iUser = new UserImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String action = request.getParameter("action");
            if (action==null){
                action=null;
            }switch (action){
            case "display":
                showListUser(request,response);

                break;
            case "create":
                break;
            case "delete":
                break;
            case "search":
                break;
        }
    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) {
        List<User> userList = iUser.selectAllUsers();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        request.setAttribute("list",userList);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action==null){
            action=null;
        }switch (action){
            case "display":
                break;
            case "create":
                break;
            case "delete":
                break;
            case "search":
                break;
        }
    }
}
