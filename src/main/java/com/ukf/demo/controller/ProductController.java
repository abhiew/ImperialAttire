package com.ukf.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.ukf.demo.model.Product;
import com.ukf.demo.service.ProductService;

@Controller
public class ProductController {

    @Autowired
    private ProductService productService;

	@GetMapping("/productForm")
	public String productForm(Model model) {
		model.addAttribute("product", new Product());
		return "productForm"; // Return the JSP name without .jsp
	}

	@PostMapping("/addProduct")
	public String addProduct(Product product, @RequestParam("size") String size,
			@RequestParam("file") MultipartFile file) {
		product.setSize(size); // Set the size from the request
		productService.saveProductWithImage(product, file);
		return "redirect:/productList"; // Redirect to the product list
    }

	@GetMapping("/productList")
	public String productList(Model model) {
		model.addAttribute("products", productService.getAllProducts()); // Fetch products from service
		return "productList"; // Return the JSP name without .jsp
    }
	
	 @GetMapping("/product/edit/{id}")
	    public String showEditProductForm(@PathVariable Long id, Model model) {
	        Product product = productService.getProductById(id); // Fetch product by ID
	        model.addAttribute("product", product); // Add product to model
	        return "productEdit"; // Return the edit JSP page
	    }

	    // Method to update product
	    @PostMapping("/product/update")
	    public String updateProduct(Product product) {
	        productService.updateProduct(product); // Update product using service
	        return "redirect:/productList"; // Redirect to product list after updating
	    }
}
