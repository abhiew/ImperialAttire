package com.ukf.demo.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ukf.demo.model.Admin;
import com.ukf.demo.repository.AdminRepository;

@Service
public class AdminService {

	@Autowired
	private AdminRepository adminRepository;

	public List<Admin> getAllAdmins() {
		return adminRepository.findAll();
	}

	public Optional<Admin> getAdminById(Long id) {
		return adminRepository.findById(id);
	}

	public Admin createAdmin(Admin admin) {
		return adminRepository.save(admin);
	}

	public Admin updateAdmin(Long id, Admin adminDetails) {
		Admin admin = adminRepository.findById(id).orElseThrow(() -> new RuntimeException("Admin not found"));
		admin.setName(adminDetails.getName());
		admin.setUsername(adminDetails.getUsername());
		admin.setPassword(adminDetails.getPassword());
		admin.setEmail(adminDetails.getEmail());
		return adminRepository.save(admin);
	}

	public void deleteAdmin(Long id) {
		adminRepository.deleteById(id);
	}

	public Admin findByUsername(String username) {
		return adminRepository.findByUsername(username);
	}

	public boolean validateAdmin(String username, String password) {
		Admin admin = findByUsername(username);
		return admin != null && admin.getPassword().equals(password);
	}
}
