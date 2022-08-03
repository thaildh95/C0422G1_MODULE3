package repository.impl;

import model.User;
import repository.IUserServiceRepository;
import repository.UserRepository;

import javax.xml.transform.Result;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class IUserServiceRepository implements repository.IUserServiceRepository {
    private final String FIND_BY_ID = "select * from users where id =?;";
    private final String SELECT_ALL = "select *from users;";
    private final String SELECT_SORT = "select *from users order by name";
    private final String INSERT_INTO = "insert into users(id,name,email,country)" +
            "values(?,?,?,?)";
    private final String DELETE_USER = "delete from users where id = ?;";
    private final String UPDATE_USER = "update users set name =?,email =?,country =? where id = ?;";

    private final String FIND_BY_COUNTRY = "select * from users  where country like" +"?"+";";

    @Override
    public List<User> findAll() {
        List<User> userList = new ArrayList<>();
        Connection connection = UserRepository.getConnectDB();
        PreparedStatement preparedStatement;
        ResultSet resultSet;
        try {
            preparedStatement = connection.prepareStatement(SELECT_ALL);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                User user = new User(id, name, email, country);
                userList.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    @Override
    public boolean add(User user) {
        Connection connection = UserRepository.getConnectDB();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setInt(1, user.getId());
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getCountry());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean update(User user) {
        Connection connection = UserRepository.getConnectDB();
        PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement(UPDATE_USER);

            preparedStatement.setString(1,user.getName());
            preparedStatement.setString(2,user.getEmail());
            preparedStatement.setString(3,user.getCountry());
            preparedStatement.setInt(4,user.getId());
            boolean update = preparedStatement.executeUpdate()>0;
            return update;
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return false;

    }

    @Override
    public boolean delete(int id) {
        Connection connection = UserRepository.getConnectDB();
       PreparedStatement preparedStatement;
        try {
            preparedStatement = connection.prepareStatement(DELETE_USER);
            preparedStatement.setInt(1,id);
            boolean Delete = preparedStatement.executeUpdate()>0;
            return Delete;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public User findById(int id) {
        Connection connection = UserRepository.getConnectDB();
        PreparedStatement preparedStatement;
        ResultSet resultSet;
        User user = null;
        try {
            preparedStatement = connection.prepareStatement(FIND_BY_ID);
            preparedStatement.setInt(1, id);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                user = new User(id, name, email, country);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }

        @Override
        public List<User> findByCountry (String country){
            Connection connection = UserRepository.getConnectDB();
            List<User> userList = new ArrayList<>();
            PreparedStatement preparedStatement;
            ResultSet resultSet;
            try {
                preparedStatement = connection.prepareStatement(FIND_BY_COUNTRY);
                preparedStatement.setString(1,"%"+country+"%");
                resultSet = preparedStatement.executeQuery();
                while (resultSet.next()){
                    int id = resultSet.getInt("id");
                    String name = resultSet.getString("name");
                    String email = resultSet.getString("email");
                    country = resultSet.getString("country");
                    userList.add(new User(id,name,email,country));
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }return userList;

        }

        @Override
        public List<User> findAllSort () {
            return null;
        }
    }
