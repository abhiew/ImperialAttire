package com.ukf.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "products")
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String name;
	private Double price;
	private String description;

	@Column(name = "size") // New size field
	private String size; // Added size field

	@Column(name = "image_url")
	private String imageUrl;

	public Product() {
	}

	public Product(Long id, String name, Double price, String description, String size, String imageUrl) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.description = description;
		this.size = size; // Initialize size
		this.imageUrl = imageUrl;
	}

	// Getters and Setters
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSize() { // Getter for size
		return size;
	}

	public void setSize(String size) { // Setter for size
		this.size = size;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", price=" + price + ", description=" + description + ", size="
				+ size + ", imageUrl=" + imageUrl + "]"; // Include size in toString
	}
}
