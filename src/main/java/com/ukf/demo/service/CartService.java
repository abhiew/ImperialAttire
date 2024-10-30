package com.ukf.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ukf.demo.model.Cart;
import com.ukf.demo.repository.CartRepository;

import java.util.List;

@Service
public class CartService {

    @Autowired
    private CartRepository cartRepository;

    public void addToCart(Cart cart) {
        cartRepository.save(cart); // Save the cart item to the database
    }

    public List<Cart> getAllCartItems() {
        return cartRepository.findAll(); // Retrieve all cart items
    }

    public void clearCart() {
        cartRepository.deleteAll(); // Clear the cart
    }
}

