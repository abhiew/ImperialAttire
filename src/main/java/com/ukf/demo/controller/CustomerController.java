package com.ukf.demo.controller;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.PostMapping;



import com.ukf.demo.model.Admin;

import com.ukf.demo.model.Customer;

import com.ukf.demo.service.AdminService;

import com.ukf.demo.service.CustomerService;

import com.ukf.demo.service.ProductService;



import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;





@Controller

public class CustomerController {



   @Autowired

   private CustomerService customerService;



   @Autowired

   private AdminService adminService; // Inject AdminService



   @Autowired

   private ProductService productService; // Ensure this line is present



   @GetMapping("/login")

   public String showLoginForm(Model model) {

       model.addAttribute("customer", new Customer());

       return "customerLogin"; // JSP file for customer login

   }



   @PostMapping("/login")

   public String login(@ModelAttribute("customer") Customer customer, Model model) {

       Customer existingCustomer = customerService.findByUsername(customer.getUsername());

       if (existingCustomer != null && existingCustomer.getPassword().equals(customer.getPassword())) {

           model.addAttribute("products", productService.getAllProducts()); // Pass product list to the home page

           return "redirect:/customerHome"; // Redirect to the customer home page

       } else {

           model.addAttribute("error", "Invalid username or password.");

           return "customerLogin"; // Return to login page with error message

       }

   }



   @GetMapping("/admin/login")

   public String showAdminLoginForm(Model model) {

       model.addAttribute("admin", new Admin());

       return "adminLogin"; // JSP file for admin login

   }



   @PostMapping("/admin/login")

   public String adminLogin(@ModelAttribute("admin") Admin admin, Model model) {

       Admin existingAdmin = adminService.findByUsername(admin.getUsername());

       if (existingAdmin != null && existingAdmin.getPassword().equals(admin.getPassword())) {

           return "adminHome"; // Redirect to admin home page on successful login

       } else {

           model.addAttribute("error", "Invalid admin username or password.");

           return "adminLogin"; // Return to admin login page with error message

       }

   }



   @GetMapping("/signup")

   public String showSignupForm(Model model) {

       model.addAttribute("customer", new Customer());

       return "customerSignup"; // JSP file for customer signup

   }

   

   @PostMapping("/signup")

   public String signup(@ModelAttribute("customer") Customer customer) {

       customerService.saveCustomer(customer);

       return "redirect:/login"; // Redirect to customer login page after signup

   }



   @GetMapping("/adminsignup")

   public String showSignupFormAdmin(Model model) {

       model.addAttribute("admin", new Admin());

       return "adminSignup"; // JSP file for admin signup

   }



   @PostMapping("/adminsignup")

   public String signupAdmin(@ModelAttribute("admin") Admin admin) {

       adminService.createAdmin(admin); // Save new admin using the service

       return "redirect:/admin/login"; // Redirect to admin login page after signup

   }




   @GetMapping("/customerHome")

   public String showCustomerHome(Model model) {

       model.addAttribute("products", productService.getAllProducts()); // Fetch products from service

       return "customerHome"; // Return the JSP name without .jsp

   }



   @PostMapping("/logout")

   public String logout(HttpServletRequest request) {

       // Invalidate the session if needed

       request.getSession().invalidate();

       return "redirect:/login"; // Redirect to customer login page

   }
   
   
   @RequestMapping("/addToCart")
   public String addToCart(@RequestParam Long productId) {
       // Logic to add product to cart
       return "redirect:/customerHome"; // Make sure this does not redirect back to an endpoint that causes the loop
   }


   // About page method
   @GetMapping("/about")
   public String showAboutPage(Model model) {
       // Optionally, you can add data to the model if needed
       // model.addAttribute("someData", someValue);
       return "about"; // Return the JSP name for the about page (e.g., "about.jsp")
   }

}