package service.impl;

import model.User;
import repository.impl.IUserServiceRepositoryImpl;
import service.IService;

import java.util.List;

public class UserServiceImpl implements IService {
    repository.IUserServiceRepository serviceRepository = new IUserServiceRepositoryImpl();
    @Override
    public List<User> findAll() {
        return serviceRepository.findAll();
    }

    @Override
    public boolean add(User user) {
        return serviceRepository.add(user);
    }

    @Override
    public boolean update(User user) {

        return serviceRepository.update(user);
    }

    @Override
    public boolean delete(int id) {
        return serviceRepository.delete(id);
    }

    @Override
    public User findById(int id) {

       return serviceRepository.findById(id);
    }

    @Override
    public List<User> findByCountry(String country) {

        return serviceRepository.findByCountry(country);
    }

    @Override
    public boolean addUserWithTransaction(User user) {
   return  serviceRepository.addUserWithTransaction(user);
    }


}
