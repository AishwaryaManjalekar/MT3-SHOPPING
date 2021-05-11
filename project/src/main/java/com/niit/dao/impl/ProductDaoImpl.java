package com.niit.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{

	@Autowired
	private SessionFactory sessionFactory;

	public List<Product> getAllProducts() {
		List<Product> allProducts = new ArrayList<Product>();
		try
		{
			Session session = sessionFactory.getCurrentSession();
			allProducts = session.createQuery("from Product").list();
			return allProducts;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
	}

	public Product getProductByID(int productID) {
		Product product;
		try
		{
			Session session = sessionFactory.getCurrentSession();
			product = session.get(Product.class, productID);
			return product;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return null;
		}
	}

	public boolean addProduct(Product product) {
		try
		{
			Session session = sessionFactory.getCurrentSession();
			session.save(product);
			session.flush();
			return true;
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			return false;
		}

}

}