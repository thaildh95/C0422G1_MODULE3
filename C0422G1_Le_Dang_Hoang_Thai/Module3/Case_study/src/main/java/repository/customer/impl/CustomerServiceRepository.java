package repository.customer.impl;

import model.person.customer.Customer;
import model.person.customer.CustomerType;
import repository.base.FuramaDatabaseConnection;
import repository.customer.ICustomerServiceRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerServiceRepository implements ICustomerServiceRepository {
    private final String SELECT_ALL = "call select_all()";
    private final String INSERT_CUSTOMER = "call insert_customer(?,?,?,?,?,?,?,?)";
    private final String FIND_BY_ID = "select * from khach_hang where ma_khach_hang = ?;";
    private final String FIND_CUSTOMER_BY_NAME = "call find_customer_by_name(?)";
    private final String EDIT_CUSTOMER = "call edit_customer(?,?,?,?,?,?,?,?,?)";
    private final String SELECT_CUSTOMER_TYPE = "call select_customer_type()";
    private final String DELETE_CUSTOMER = "call delete_customer(?)";


    @Override
    public List<Customer> showAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = FuramaDatabaseConnection.getConnection();
        CallableStatement callableStatement;
        ResultSet resultSet;
        try {
            callableStatement = connection.prepareCall(SELECT_ALL);
            callableStatement.executeQuery();
            resultSet = callableStatement.getResultSet();

            while (resultSet.next()) {
                int id = resultSet.getInt(1);
                int customerTypeId = resultSet.getInt(2);
                String name = resultSet.getString(3);
                String dayOfBirth = String.valueOf(resultSet.getDate(4));
                int gender = resultSet.getInt(5);
                String idCard = resultSet.getString(6);
                String phoneNumer = resultSet.getString(7);
                String email = resultSet.getString(8);
                String address = resultSet.getString(9);
                Customer customer = new Customer(id,customerTypeId, name, dayOfBirth, gender, idCard, phoneNumer, email, address);
                customerList.add(customer);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public List<CustomerType> showCustomerTypeList() {
        List<CustomerType> customerTypeList = new ArrayList<>();
        Connection connection =FuramaDatabaseConnection.getConnection();

        try {
            CallableStatement callableStatement = connection.prepareCall(SELECT_CUSTOMER_TYPE);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt(1);
                String customerTypeName = resultSet.getString(2);
                customerTypeList.add(new CustomerType(id,customerTypeName));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return  customerTypeList;
    }

    @Override
    public boolean add(Customer customer) {
        Connection connection = FuramaDatabaseConnection.getConnection();
        CallableStatement callableStatement;
        try {
            callableStatement = connection.prepareCall(INSERT_CUSTOMER);
            callableStatement.setInt(1, customer.getTypeCustomerId());
            callableStatement.setString(2, customer.getName());
            callableStatement.setString(3, customer.getDayOfBirth());
            callableStatement.setInt(4, customer.getGender());
            callableStatement.setString(5, customer.getIdCard());
            callableStatement.setString(6, customer.getPhoneNumber());
            callableStatement.setString(7, customer.getEmail());
            callableStatement.setString(8, customer.getAddress());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return false;
    }

    @Override
    public boolean edit(Customer customer) {
        boolean rowUpdate =false;
        Connection connection = FuramaDatabaseConnection.getConnection();
        CallableStatement callableStatement;
        try {
            callableStatement = connection.prepareCall(EDIT_CUSTOMER);
            callableStatement.setInt(1,customer.getTypeCustomerId());
            callableStatement.setString(2,customer.getName());
            callableStatement.setString(3,customer.getDayOfBirth());
            callableStatement.setInt(4,customer.getGender());
            callableStatement.setString(5,customer.getIdCard());
            callableStatement.setString(6,customer.getPhoneNumber());
            callableStatement.setString(7,customer.getEmail());
            callableStatement.setString(8,customer.getAddress());
            callableStatement.setInt(9,customer.getCustomerId());
            rowUpdate = callableStatement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return rowUpdate;
    }

    @Override
    public void delete(int id) {
        Connection connection = FuramaDatabaseConnection.getConnection();
        CallableStatement callableStatement;
        try {
            callableStatement = connection.prepareCall(DELETE_CUSTOMER);
            callableStatement.setInt(1,id);
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    @Override
    public List<Customer> search(int id_search) {

        return null;

    }

    @Override
    public List<CustomerType> getCustomerTypeList() {

        return null;
    }

    @Override

    public Customer searchCustomer(String name_customer) {
        Connection connection=FuramaDatabaseConnection.getConnection();
        Customer customer=null;
        try {
            CallableStatement callableStatement = connection.prepareCall(FIND_CUSTOMER_BY_NAME);
            ResultSet resultSet = callableStatement.executeQuery();
            while (resultSet.next()){
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                String name = resultSet.getString("ho_ten");
                String dayOfBirth = String.valueOf(resultSet.getDate("ngay_sinh"));
                int gender = resultSet.getInt("gioi_tinh");
                String idCard = resultSet.getString("so_cmnd");
                String phoneNumber = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                customer = new Customer(customerTypeId, name, dayOfBirth, gender, idCard, phoneNumber, email, address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return customer;
    }



    @Override
    public Customer findById(int id) {

        Connection connection = FuramaDatabaseConnection.getConnection();
        Customer customer = null;
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1,id);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                String name = resultSet.getString("ho_ten");
                String birthDay = resultSet.getString("ngay_sinh");
                String idCard = resultSet.getString("so_cmnd");
                String phone = resultSet.getString("so_dien_thoai");
                String email = resultSet.getString("email");
                String address = resultSet.getString("dia_chi");
                int customerId = resultSet.getInt("ma_khach_hang");
                int customerTypeId = resultSet.getInt("ma_loai_khach");
                int gender = resultSet.getInt("gioi_tinh");
                customer = new Customer(customerTypeId, name, birthDay,  gender,idCard, phone, email, address);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customer;
}}