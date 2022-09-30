package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();

    List<Product> seachByName(String name);

    Product findById(int id);

    void save(Product product);

    void delete(int id);

    void update(int id, Product product);
}
