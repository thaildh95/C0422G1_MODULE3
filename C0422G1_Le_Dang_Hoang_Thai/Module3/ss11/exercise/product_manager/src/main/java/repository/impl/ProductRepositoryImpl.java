package repository.impl;

import model.Product;
import repository.ProductRepository;

import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImpl implements ProductRepository {
    private static List<Product> productList = new ArrayList<>();

    static {
        productList.add(new Product(1, "Ip11", 12000000, "hang 100%", "Apple"));
        productList.add(new Product(2, "Ip12", 13000000, "nguyen tem", "Apple"));
        productList.add(new Product(3, "Ip13", 15000000, "hang 99%", "Apple"));
        productList.add(new Product(4, "IpX", 9000000, "hang 90%", "Apple"));
        productList.add(new Product(5, "Ip14", 27000000, "nguyen tem%", "Apple"));
        productList.add(new Product(6, "Ip8", 7000000, "hang 98%", "Apple"));
    }


    @Override
    public List<Product> findAll() {
        return productList;
    }

    @Override
    public Product findById(int id) {
        for (Product p : productList) {
            if (p.getProductId() == id) {
                return p;
            }
        }
        return null;
    }

    @Override
    public void add(Product product) {
        productList.add(product);
    }

    @Override
    public void update(int id, Product product) {
        for (int i = 0; i < productList.size(); i++) {
            if (findById(id) == productList.get(i)) {
                productList.set(i, product);
            }
        }
    }

    @Override
    public void delete(int id) {
        for (Product p : productList
        ) {
            if (id == p.getProductId())
                productList.remove(p);
        }
    }
}


