package com.niit.service.impl;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

    @Autowired
    private ProductDao productDao;

    @Override
	public Product getProductById(int productId){
        return productDao.getProductById(productId);
    }

    @Override
	public List<Product> getProductList(){
        return productDao.getProductList();
    }

    @Override
	public void addProduct(Product product){
        productDao.addProduct(product);
    }

    @Override
	public void editProduct(Product product){
        productDao.editProduct(product);
    }

    @Override
	public void deleteProduct(Product product){
        productDao.deleteProduct(product);
    }


} 
