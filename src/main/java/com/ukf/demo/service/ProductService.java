package com.ukf.demo.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ukf.demo.model.Product;
import com.ukf.demo.repository.ProductRepository;

@Service
public class ProductService {

    @Autowired
    private ProductRepository productRepository;

    @Value("${file.upload-dir}")
    private String uploadDir;

    /**
     * Save a product with its image file to the database and file system.
     * @param product The product entity to be saved.
     * @param file The image file associated with the product.
     */
    public void saveProductWithImage(Product product, MultipartFile file) {
        try {
            // Validate that the file is not empty
            if (file != null && !file.isEmpty()) {
                String fileName = file.getOriginalFilename();
                Path filePath = Paths.get(uploadDir, fileName);
                
                // Create directories if they do not exist
                Files.createDirectories(filePath.getParent());
                
                // Save the file to the specified location
                Files.write(filePath, file.getBytes());
                product.setImageUrl("/uploads/" + fileName); // Set the file path in the product object
            }
            
            // Save the product entity to the database
            productRepository.save(product);
        } catch (IOException e) {
            e.printStackTrace();
            // Log the error and handle it appropriately (e.g., display an error message)
        }
    }

    /**
     * Retrieve all products from the database.
     * @return A list of all products.
     */
    public List<Product> getAllProducts1() {
        List<Product> products = productRepository.findAll();
        System.out.println("Fetched Products: " + products); // Debug line
        return products;
    }

 
   

    public List<Product> getAllProducts() {
        return productRepository.findAll();
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null); // Fetch product by ID
    }

    public void updateProduct(Product product) {
        productRepository.save(product); // Save updated product
    }
    
    public Product findById(Long productId) {
        // Mocking a product fetch; implement actual fetching logic here
        return new Product();
    }
    
}
