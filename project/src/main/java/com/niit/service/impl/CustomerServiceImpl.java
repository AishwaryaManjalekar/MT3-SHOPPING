package com.niit.service.impl;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CustomerDao;
import com.niit.model.Customer;
import com.niit.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService{

    @Autowired
    private CustomerDao customerDao;

    @Override
	public void addCustomer(Customer customer){
        customerDao.addCustomer(customer);
    }

    @Override
	public Customer getCustomerById(int customerId){
        return customerDao.getCustomerById(customerId);
    }

    @Override
	public List<Customer> getAllCustomers(){
        return customerDao.getAllCustomers();
    }

    @Override
	public Customer getCustomerByUsername (String username){
        return customerDao.getCustomerByUsername(username);
    }


}
