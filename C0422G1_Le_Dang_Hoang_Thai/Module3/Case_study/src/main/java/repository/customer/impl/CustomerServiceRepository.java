package repository.customer.impl;

import model.person.customer.Customer;
import model.person.customer.CustomerType;
import repository.base.FuramaDatabaseConnection;
import repository.customer.ICustomerServiceRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CustomerServiceRepository implements ICustomerServiceRepository {
    private final String SECLECT_ALL = "call select_all()";
    private final String INSERT_CUSTOMER = "call insert_customer(?,?,?,?,?,?,?,?,?)";
    @Override
    public List<Customer> showAll() {
        List<Customer> customerList = new ArrayList<>();
        Connection connection = FuramaDatabaseConnection.getConnection();
        CallableStatement callableStatement;
        ResultSet resultSet ;
        try {
            callableStatement = connection.prepareCall(SECLECT_ALL);
            callableStatement.executeQuery();
            resultSet = callableStatement.getResultSet();

            while (resultSet.next()){
                int id = resultSet.getInt(1);
                int customerTypeId = resultSet.getInt(2);
                String name = resultSet.getString(3);
                Date dayOfBirth = resultSet.getDate(4);
                int gender = resultSet.getInt(5);
                String idCard = resultSet.getString(6);
                String phoneNumer = resultSet.getString(7);
                String email = resultSet.getString(8);
                String address = resultSet.getString(9);
                Customer customer = new Customer(id,customerTypeId,name,dayOfBirth,gender,idCard,phoneNumer,email,address);
                customerList.add(customer);

            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return customerList;
    }

    @Override
    public boolean add(Customer customer) {
        Connection connection = FuramaDatabaseConnection.getConnection();
        CallableStatement callableStatement;

        try {
            callableStatement = connection.prepareCall(INSERT_CUSTOMER);
            callableStatement.setInt(1,customer.getCustomerId());
            callableStatement.setInt(2,customer.getTypeCustomerId());
            callableStatement.setString(3,customer.getName());
            callableStatement.setDate(4,customer.getDayOfBirth());
            callableStatement.setInt(5,customer.getGender());
            callableStatement.setString(6,customer.getIdCard());
            callableStatement.setString(7,customer.getPhoneNumber());
            callableStatement.setString(8,customer.getEmail());
            callableStatement.setString(9,customer.getAddress());
            callableStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return false;
    }

    @Override
    public boolean edit(Customer customer, int id) {
        Connection connection = FuramaDatabaseConnection.getConnection();
        CallableStatement callableStatement;

        return false;
    }

    @Override
    public boolean delete(int id) {
        return false;
    }

    @Override
    public List<Customer> search() {
        return null;
    }

    @Override
    public List<CustomerType> getCustomerTypeList() {
        return null;
    }

    @Override
    public Customer searchCustomer(int id_search) {
        return null;
    }
}
