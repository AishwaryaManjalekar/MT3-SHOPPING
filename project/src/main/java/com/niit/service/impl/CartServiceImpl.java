package com.niit.service.impl;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CartDao;
import com.niit.model.Cart;
import com.niit.service.CartService;


@Service
public class CartServiceImpl implements CartService{

    @Autowired
    private CartDao cartDao;

    @Override
	public Cart getCartById(int cartId){
        return cartDao.getCartById(cartId);
    }

    @Override
	public void update(Cart cart){
        cartDao.update(cart);
    }

} 
