package service;

import model.Product;

import java.util.List;

public interface IService {
    List<Product> all();

    void addProduct(Product product);

    void updateProduct(int productId, Product product);
    void deleteProduct(int productId);
    void detailProduct();
    Product findById(int productId);
    List<Product> searchByName(String productName);
}
