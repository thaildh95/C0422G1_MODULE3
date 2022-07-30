package service.impl;

import model.Product;
import repository.ProductRepository;
import repository.impl.ProductRepositoryImpl;
import service.Service;

import java.util.List;

public class ProductServiceImpl implements Service {
    private ProductRepository productRepository = new ProductRepositoryImpl() ;


    @Override
    public List<Product> all() {
        return productRepository.findAll();
    }

    @Override
    public void addProduct(Product product) {
        productRepository.add(product);
    }

    @Override
    public void updateProduct(int productId, Product product) {
    productRepository.update(productId,product);
    }

    @Override
    public void deleteProduct(int productId) {
    productRepository.delete(productId);
    }


    @Override
    public void displayProductInfo() {

    }

    @Override
    public Product findById(int productId) {
        return productRepository.findById(productId);
    }



}
