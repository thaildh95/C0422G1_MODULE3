package service.customer;

import model.person.customer.Customer;
import model.person.customer.CustomerType;

import java.util.List;

public interface ICustomerService {
    List<Customer> showCustomerList();

    boolean add(Customer customer);

    boolean edit(Customer customer,int id);

    boolean delete(int id);

    List<Customer> search();
    List<CustomerType> getCustomerTypeList();
    Customer searchCustomer(int id_search);
}
