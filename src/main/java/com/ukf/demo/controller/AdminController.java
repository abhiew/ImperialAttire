package com.ukf.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ukf.demo.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@PostMapping("/adminLogin")
	public String adminLogin(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model) {
		if (adminService.validateAdmin(username, password)) {
			return "redirect:/productForm"; // Redirect to product form after successful login
		} else {
			model.addAttribute("error", "Invalid username or password");
			return "adminLogin"; // Return to admin login page with error message
		}
	}

	@GetMapping("/adminLogin")
	public String adminLoginPage() {
		return "adminLogin"; // Returns the JSP view for the admin login page
	}
}
