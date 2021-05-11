package com.niit.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
import com.niit.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDao productDao;

	public List<Product> getAllProducts() {
		return  productDao.getAllProducts();
	}

	public Product getProductByID(int productID) {
		return productDao.getProductByID(productID);
	}

	public boolean addProduct(Product product) {
		return productDao.addProduct(product);
	}
	
}
