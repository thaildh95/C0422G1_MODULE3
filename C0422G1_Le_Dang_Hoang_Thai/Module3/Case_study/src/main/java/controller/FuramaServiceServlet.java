package controller;

import model.contract.Facility;
import model.contract.FacilityType;
import model.contract.RentType;
import service.facility.IFacilityService;
import service.facility.impl.FacilityService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FuramaServlet", value = "/facility")
public class FuramaServiceServlet extends HttpServlet {
    private static IFacilityService facilityService = new FacilityService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "displayfaciltyList":
                displayServiceList(request, response);
                break;
            case "displayAddService":
                displayAddService(request, response);
                break;
            case "displayEditService":
                displayEditService(request, response);
                break;
            case "displayHome":
                displayhome(request, response);
                break;

        }
    }


    private void displayhome(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/index.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void displayEditService(HttpServletRequest request, HttpServletResponse response) {
        int facilityCode = Integer.parseInt(request.getParameter("facilityCode"));
        List<RentType> rentTypeList = facilityService.showRentType();
        Facility facility = facilityService.findById(facilityCode);
        request.setAttribute("rentTypeList",rentTypeList);
        request.setAttribute("facility",facility);
        try {
            request.getRequestDispatcher("/view/crud/facility/edit-service.jsp").forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void displayAddService(HttpServletRequest request, HttpServletResponse response) {
        List<RentType> rentTypeList = facilityService.showRentType();
        request.setAttribute("rentTypeList", rentTypeList);
        try {
            request.getRequestDispatcher("/view/crud/facility/add-service.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void displayServiceList(HttpServletRequest request, HttpServletResponse response) {
        List<Facility> facilityList = facilityService.findAll();
        List<RentType> rentTypeList = facilityService.showRentType();
        List<FacilityType> facilityTypeList = facilityService.showFacilityType();
        request.setAttribute("facilityList", facilityList);
        request.setAttribute("rentTypeList", rentTypeList);
        request.setAttribute("facilityTypeList", facilityTypeList);
        try {
            request.getRequestDispatcher("/view/crud/facility/list-servicee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
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
                addFacility(request, response);
                break;
            case "updateFacility":
                updateFacility(request, response);
                break;
            case "delete":
                deleteFacility(request,response);
                break;
            case "search":
                break;
        }
    }

    private void deleteFacility(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("facilityCode"));
        facilityService.deleteFacility(id);
        List<Facility> facilityList = facilityService.findAll();
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/view/crud/facility/list-servicee.jsp");
        request.setAttribute("facilityList",facilityList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void addFacility(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("people"));
        int rentalTypeId = Integer.parseInt(request.getParameter("rentalType"));
        int typeId = Integer.parseInt(request.getParameter("id"));
        String standard = request.getParameter("standard");
        String convenience = request.getParameter("convenience");
//        int floors = Integer.parseInt(request.getParameter("floors"));
        Double poolArea;
        if (request.getParameter("Pool") == "") {
            poolArea = 0.0;
        } else
            poolArea = Double.parseDouble(request.getParameter("Pool"));
        int floors;
        if (request.getParameter("floors") == "") {
            floors = 0;
        } else floors = Integer.parseInt(request.getParameter("floors"));
        String facilityFree = request.getParameter("free");
//        double poolArea = Double.parseDouble(request.getParameter("Pool"));

        Facility facility = new Facility(name, area, cost, maxPeople, rentalTypeId, typeId, standard, convenience, poolArea, floors, facilityFree);
        facilityService.addFacility(facility);
        List<Facility> facilityList = facilityService.findAll();
        List<RentType> rentTypeList = facilityService.showRentType();
        List<FacilityType> facilityTypeList = facilityService.showFacilityType();
        request.setAttribute("facilityList", facilityList);
        request.setAttribute("rentTypeList", rentTypeList);
        request.setAttribute("facilityTypeList", facilityTypeList);


        try {
            request.getRequestDispatcher("/view/crud/facility/list-servicee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void updateFacility(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        int area = Integer.parseInt(request.getParameter("area"));
        double cost = Double.parseDouble(request.getParameter("cost"));
        int maxPeople = Integer.parseInt(request.getParameter("people"));
        int rentalTypeId = Integer.parseInt(request.getParameter("rentalType"));
        int typeId = Integer.parseInt(request.getParameter("id"));
        int id = Integer.parseInt(request.getParameter("facilityCode"));
        String standard = request.getParameter("standard");
        String convenience = request.getParameter("convenience");
//        int floors = Integer.parseInt(request.getParameter("floors"));
        Double poolArea;
        if (request.getParameter("Pool") == "") {
            poolArea = 0.0;
        } else
            poolArea = Double.parseDouble(request.getParameter("Pool"));
        int floors;
        if (request.getParameter("floors") == "") {
            floors = 0;
        } else floors = Integer.parseInt(request.getParameter("floors"));
        String facilityFree = request.getParameter("free");

//        double poolArea = Double.parseDouble(request.getParameter("Pool"));

        Facility facility = new Facility(id,name, area, cost, maxPeople, rentalTypeId, typeId, standard, convenience, poolArea, floors, facilityFree);
        facilityService.editFacility(facility);
        List<RentType> rentTypeList = facilityService.showRentType();
        List<FacilityType> facilityTypeList = facilityService.showFacilityType();

        List<Facility> list= facilityService.findAll();
        request.setAttribute("facilityList",list);

        try {
            request.getRequestDispatcher("/view/crud/facility/list-servicee.jsp").forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
