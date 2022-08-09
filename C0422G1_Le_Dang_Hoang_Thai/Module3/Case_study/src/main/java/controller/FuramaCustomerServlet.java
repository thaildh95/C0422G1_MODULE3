package controller;

import model.person.customer.Customer;
import model.person.customer.CustomerType;
import service.customer.ICustomerService;
import service.customer.impl.CustomerService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@WebServlet(name = "FuramaCustomerServlet", urlPatterns ={"/FuramaCustomer","/customer"} )
public class FuramaCustomerServlet extends HttpServlet {
    private  static ICustomerService customerService = new CustomerService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action  = request.getParameter("action");
        if (action == null){
            action="";
        }switch (action){
            case "displayCustomerList":
                displayCustomerList(request, response);
                break;
            case "displayAddCustomer":
                displayAddList(request, response);
                break;
            case "displayedit":
                displayEditForm(request, response);
                break;
            default: displayCustomerList(request, response);
            break;
        }
    }

    private void displayEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("customerId"));
        List<CustomerType> customerTypeList = customerService.showCustomerTypeList();
        request.setAttribute("customerTypeList", customerTypeList);
        Customer customer = customerService.findById(id);
        request.setAttribute("customer",customer);

        try {

            request.getRequestDispatcher("/view/crud/customer/edit-customer.jsp").forward(request,response);

        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void displayAddList(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/customer/add-customer.jsp");
        List<CustomerType> customerTypeList = customerService.showCustomerTypeList();
        request.setAttribute("customerTypeList", customerTypeList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action  = request.getParameter("action");
        if (action == null){
            action="";
        }
        switch (action){
            case "addNewCustomer":
                addCustomer(request,response);
                break;
            case "editCustomer":
                editCustomer(request, response);
                break;
            case "deleteCustomer":
                deleteCustomer(request, response);
                break;
        }
    }

    private void deleteCustomer(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        customerService.delete(id);
        displayCustomerList(request,response);

    }

    private void editCustomer(HttpServletRequest request, HttpServletResponse response) {
        int customerId = Integer.parseInt(request.getParameter("customerId"));
        int customerTypeId = Integer.parseInt(request.getParameter("customertype"));
        String name = request.getParameter("name");
        String dayOfBirth =request.getParameter("birth");
        int gender = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idcard");
        String phoneNumber= request.getParameter("phone");
        String email= request.getParameter("email");
        String address = request.getParameter("address");

//        int customerId = Integer.parseInt(request.getParameter("id"));
        Customer customer = new Customer(customerId,customerTypeId,name,dayOfBirth,gender,idCard,phoneNumber,email,address);
        customerService.edit(customer);
        request.setAttribute("customer",customer);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/customer/list-customer.jsp");

        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addCustomer(HttpServletRequest request, HttpServletResponse response) {
        int customerTypeId  = Integer.parseInt(request.getParameter("customertype"));
        String name = request.getParameter("name");
        String dayOfBirth = request.getParameter("birth");
        int gender  = Integer.parseInt(request.getParameter("gender"));
        String idCard = request.getParameter("idcard");
        String phoneNumber = request.getParameter("phone");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        Customer customer = new Customer(customerTypeId,name,dayOfBirth,gender,idCard,phoneNumber,email,address);
        customerService.add(customer);

        List<Customer> customerList = customerService.showCustomerList();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/customer/add-customer.jsp");
        request.setAttribute("customerList",customerList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    private void displayCustomerList(HttpServletRequest request, HttpServletResponse response) {
        List<Customer> customerList = customerService.showCustomerList();
        List<CustomerType> customerTypeList = customerService.showCustomerTypeList();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/crud/customer/list-customer.jsp");
        request.setAttribute("customerList", customerList);
        request.setAttribute("customerTypeList", customerTypeList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    private void displayhome(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/index.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
}}
