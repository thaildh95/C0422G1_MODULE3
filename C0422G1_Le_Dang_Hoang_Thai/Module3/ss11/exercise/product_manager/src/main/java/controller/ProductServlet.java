package controller;

import model.Product;
import service.IService;
import service.impl.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/Product")
public class ProductServlet extends HttpServlet {
    private IService productService = new ProductService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                showAddForm(request, response);
                break;
            case "edit":
                showEditForm(request, response);
                break;
            case "delete":
                showDeleteForm(request,response);
                break;
            case "search" :
                showSearchByName(request,response);

            case "detail":
                detailProduct(request,response);
            default:
                showListProduct(request, response);
        }
    }

    private void showDetailProduct(HttpServletRequest request, HttpServletResponse response) {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "add":
                addProduct(request, response);
                break;
            case "edit":
                editProduct(request, response);
                break;
            case "delete":
                deleteProduct(request,response);
                break;
            case "search":
                searchByName(request,response);
                break;
            case "detail" :
                detailProduct(request,response);
            default:
                break;
        }

    }

    private void detailProduct(HttpServletRequest request, HttpServletResponse response) {
        int productId = Integer.parseInt(request.getParameter("id"));
       Product product = productService.findById(productId);
       request.setAttribute("product",product);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/detail.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showSearchByName(HttpServletRequest request, HttpServletResponse response) {
        String productName = request.getParameter("productName");
        List<Product> productList = productService.searchByName(productName);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list/product.jsp");
        request.setAttribute("list", productList);
        try {
            requestDispatcher.forward(request, response);

        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showDeleteForm(HttpServletRequest request, HttpServletResponse response) {
        int productId = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(productId);
        request.setAttribute("product", product);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/view/crud/delete-product.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int productId = Integer.parseInt(request.getParameter("id"));
        Product product = productService.findById(productId);
        request.setAttribute("product", product);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/edit-product.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/create-product.jsp");

        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) {
        int productId = Integer.parseInt(request.getParameter("productId"));
        String productName = request.getParameter("productName");
        double productPrice = Double.parseDouble(request.getParameter("productPrice"));
        String productDescription = request.getParameter("productDescription");
        String producerName = request.getParameter("producerName");
        productService.addProduct(new Product(productId, productName, productPrice, productDescription, producerName));

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/crud/create-product.jsp");
        request.setAttribute("message", "Add success " + productName);
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void showListProduct(HttpServletRequest request, HttpServletResponse response) {
        List<Product> productList = productService.all();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/list/product.jsp");
        request.setAttribute("list", productList);
        try {
            requestDispatcher.forward(request, response);

        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void searchByName(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher;
        String productName = request.getParameter("productName");
        List<Product> productList = productService.searchByName(productName);
        if (productList.isEmpty()){
            requestDispatcher = request.getRequestDispatcher("view/crud/404.jsp");
        }else {
            requestDispatcher = request.getRequestDispatcher("view/list/product.jsp");
            request.setAttribute("list",productList);
        }

        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void deleteProduct(HttpServletRequest request, HttpServletResponse response) {
        int productId = Integer.parseInt(request.getParameter("id"));
        productService.deleteProduct(productId);
        showListProduct(request,response);
        try {
         response.sendRedirect("/Product");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editProduct(HttpServletRequest request, HttpServletResponse response) {
        int productId = Integer.parseInt(request.getParameter("id"));
        String productName = request.getParameter("name");
        double productPrice = Double.parseDouble(request.getParameter("price"));
        String productDescription = request.getParameter("description");
        String producerName = request.getParameter("producer");
        Product product = new Product(productId, productName, productPrice, productDescription, producerName);
        productService.updateProduct(productId, product);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/crud/edit-product.jsp");
        request.setAttribute("message", "edit success");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
