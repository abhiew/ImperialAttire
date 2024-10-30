package com.ukf.demo.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ukf.demo.model.Cart;
import com.ukf.demo.model.Product;
import com.ukf.demo.service.CartService;
import com.ukf.demo.service.ProductService;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CartController {

    @Autowired
    private CartService cartService;

    @Autowired
    private ProductService productService;

    @PostMapping("/addToCart")
    public String addToCart(@RequestParam Long productId, @RequestParam int quantity) {
        Product product = productService.getProductById(productId); // Fetch product from service
        if (product != null) {
            // Create a new Cart item and save it
            Cart cartItem = new Cart(product.getName(), product.getPrice(), quantity, product.getImageUrl());
            cartService.addToCart(cartItem);
        }
        return "redirect:/cart"; // Redirect to cart page after adding
    }

    @RequestMapping("/cart")
    public String viewCart(Model model) {
        model.addAttribute("cartItems", cartService.getAllCartItems()); // Add cart items to the model
        return "cart"; // Return the cart view
    }
}


