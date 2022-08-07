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
    public boolean add(Customer customer) {
        return false;
    }

    @Override
    public boolean edit(Customer customer, int id) {
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
