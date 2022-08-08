package repository.customer;

import model.person.customer.Customer;
import model.person.customer.CustomerType;

import java.util.List;

public interface ICustomerServiceRepository {
    List<Customer> showAll();
    List<CustomerType> showCustomerTypeList();
    boolean add(Customer customer);

    boolean edit(Customer customer);

    void delete(int id);

    List<Customer> search(int id_search);
    List<CustomerType> getCustomerTypeList();
    Customer searchCustomer(String name);
    Customer findById(int id_search);
}
