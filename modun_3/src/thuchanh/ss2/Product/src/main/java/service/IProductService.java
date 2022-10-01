package service;

import model.Product;

import java.util.List;

public interface IProductService {
    List<Product> findAll();
    List<Product> searchName(String name);
    Product findById(int id);
    void save(Product product);
    void delete(int id);
    void edit(int id, Product product);
}