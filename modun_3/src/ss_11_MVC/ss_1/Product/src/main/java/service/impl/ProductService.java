package service.impl;

import model.Product;
import repository.IProductReponsitory;
import repository.impl.ProductReponsitory;
import service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private static IProductReponsitory iProductReponsitory = new ProductReponsitory();
    @Override
    public List<Product> findAll() {
        return iProductReponsitory.findAll();
    }

    @Override
    public List<Product> seachByName(String name) {
        return iProductReponsitory.search(name);
    }

    @Override
    public Product findById(int id) {
        return iProductReponsitory.findById(id);
    }

    @Override
    public void save(Product product) {
        iProductReponsitory.save(product);
    }

    @Override
    public void delete(int id) {
        iProductReponsitory.delete(id);
    }

    @Override
    public void update(int id, Product product) {
        iProductReponsitory.update(id,product);
    }
}
