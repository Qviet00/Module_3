package repository.impl;

import model.Product;
import repository.IProductReponsitory;

import java.util.*;

public class ProductReponsitory implements IProductReponsitory {
    private static Map<Integer, Product> productList = new HashMap<>();

    static {
        productList.put(1, new Product(1, "Cocacola", 10000, "Nước giải khát", "Cocacola"));
        productList.put(2, new Product(2, "Pepsi", 10000, "Nước giải khát", "Pepsi"));
        productList.put(3, new Product(3, "Bò húc", 15000, "Nước giải khát", "Reabun"));
        productList.put(4, new Product(4, "Seven-up", 10000, "Nước giải khát", "pepsi"));
        productList.put(5, new Product(5, "Trà bí đao", 10000, "Nước giải khát", "Cocacola"));
        productList.put(14, new Product(5, "Cocacola", 10000, "Nước giải khát", "Cocacola"));
        productList.put(6, new Product(6, "Pepsi", 10000, "Nước giải khát", "Pepsi"));
        productList.put(7, new Product(7, "Bò húc", 15000, "Nước giải khát", "Reabun"));
        productList.put(8, new Product(8, "Seven-up", 10000, "Nước giải khát", "pepsi"));
        productList.put(9, new Product(9, "Trà bí đao", 10000, "Nước giải khát", "Cocacola"));
        productList.put(15, new Product(1, "Cocacola", 10000, "Nước giải khát", "Cocacola"));
        productList.put(10, new Product(10, "Pepsi", 10000, "Nước giải khát", "Pepsi"));
        productList.put(11, new Product(11, "Bò húc", 15000, "Nước giải khát", "Reabun"));
        productList.put(12, new Product(12, "Seven-up", 10000, "Nước giải khát", "pepsi"));
        productList.put(13, new Product(13, "Trà bí đao", 10000, "Nước giải khát", "Cocacola"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(productList.values());
    }

    @Override
    public Product findById(int id) {
        return productList.get(id);
    }

    @Override
    public List<Product> search(String name) {
        List<Product> list = new ArrayList<>();
        Set<Integer> set = productList.keySet();
        for (Integer integer : set
        ) {
            if (productList.get(integer).getProductName().contains(name)) {
                list.add(productList.get(integer));
            }
        }
        return list;
    }

    @Override
    public void save(Product product) {
        productList.put(product.getId(), product);
    }

    @Override
    public void delete(int id) {
        productList.remove(id);

    }

    @Override
    public String view(int id) {
        return null;
    }

    @Override
    public void update(int id, Product product) {
        productList.put(id, product);
    }
}
