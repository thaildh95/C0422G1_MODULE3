package service.customer.impl;

import model.person.customer.Customer;
import model.person.customer.CustomerType;
import repository.customer.ICustomerServiceRepository;
import repository.customer.impl.CustomerServiceRepository;
import service.customer.ICustomerService;

import java.util.List;

public class CustomerService implements ICustomerService {
    private static ICustomerServiceRepository serviceRepository = new CustomerServiceRepository();
    @Override
    public List<Customer> showCustomerList() {

        return serviceRepository.showAll();
    }

    @Override
    public List<CustomerType> showCustomerTypeList() {
        return  serviceRepository.showCustomerTypeList();
    }

    @Override
    public boolean add(Customer customer) {
        return serviceRepository.add(customer);
    }

    @Override

    public boolean edit(Customer customer) {

        return serviceRepository.edit(customer);
    }

    @Override
    public void delete(int id) {
        serviceRepository.delete(id);
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
    public Customer searchCustomer(String name) {
        return null;
    }


    @Override
    public Customer findById(int id_search) {
        return null;
    }
}
