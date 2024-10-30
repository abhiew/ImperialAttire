package com.ukf.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ukf.demo.model.Customer;
import com.ukf.demo.repository.CustomerRepository;

@Service
public class CustomerService {

	@Autowired
	private CustomerRepository customerRepository;


    public Customer findByUsername(String username) {
        return customerRepository.findByUsername(username);
    }

    public void saveCustomer(Customer customer) {
        customerRepository.save(customer);
    }
}
