package com.ukf.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ukf.demo.model.Admin;

public interface AdminRepository extends JpaRepository<Admin, Long> {
	Admin findByUsername(String username);
}
