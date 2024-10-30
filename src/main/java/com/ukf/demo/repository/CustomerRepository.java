package com.ukf.demo.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.ukf.demo.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
	Customer findByUsername(String username);
}
