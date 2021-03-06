package controller;

import model.User;
import service.IService;
import service.impl.UserServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = {"/user"})
public class UserServlet extends HttpServlet {
    private static IService service = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showFormAdd(request, response);
                break;
            case "update":
                showUpdateForm(request, response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            default:
                showListUser(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addUser(request, response);
                break;
            case "update":
                updateUser(request,response);
                break;
            case "delete":
                deleteUser(request, response);
                break;
            case "search":
                searchByCountry(request,response);

                break;
            case "sort":
                break;
        }
    }

    private void searchByCountry(HttpServletRequest request, HttpServletResponse response) {
        String country = request.getParameter("country");
        List<User> userList =  service.findByCountry(country);
        request.setAttribute("list",userList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void updateUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User users = new User(id,name,email,country);
        service.update(users);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/crud/update.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String country = request.getParameter("country");
        User user = new User(id, name, email, country);
        service.add(user);
        request.setAttribute("mesage", "add success");
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/crud/add.jsp");
        showFormAdd(request, response);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void sortUser(HttpServletRequest request, HttpServletResponse response) {

    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        service.delete(id);
        showListUser(request, response);
    }



    private void showUpdateForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        User user = service.findById(id);
        RequestDispatcher requestDispatcher;
        request.setAttribute("user", user);
        requestDispatcher = request.getRequestDispatcher("view/crud/update.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showFormAdd(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/crud/add.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showListUser(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list.jsp");
        List<User> userList = service.findAll();
        request.setAttribute("list", userList);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
