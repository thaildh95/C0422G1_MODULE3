package service;

import model.User;

import java.util.List;

public interface IService {
    List<User> findAll();
    boolean add(User user);
    boolean update(User user);
    boolean delete(int id);
    User findById(int id);
    List<User> findByCountry(String country);

}
