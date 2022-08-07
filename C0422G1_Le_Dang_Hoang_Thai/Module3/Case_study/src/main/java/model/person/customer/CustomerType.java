package model.person.customer;

public class CustomerType {
    private int typeCustomerId;
    private String customerTypeName;

    public CustomerType() {
    }

    public CustomerType(int typeCustomerId, String customerTypeName) {
        this.typeCustomerId = typeCustomerId;
        this.customerTypeName = customerTypeName;
    }

    public int getTypeCustomerId() {
        return typeCustomerId;
    }

    public void setTypeCustomerId(int typeCustomerId) {
        this.typeCustomerId = typeCustomerId;
    }

    public String getCustomerTypeName() {
        return customerTypeName;
    }

    public void setCustomerTypeName(String customerTypeName) {
        this.customerTypeName = customerTypeName;
    }
}
