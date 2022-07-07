package com.greatlearning.CustomerRelationship.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.greatlearning.CustomerRelationship.model.Customers;
import com.greatlearning.CustomerRelationship.services.CustomerService;

// controller to map the CRUD operations
@Controller
@RequestMapping("/")
public class CustomerController {

	@Autowired
	CustomerService customerservice;

	// visit create-form
	@GetMapping("/add")
	public String add() {

		return "create-form";
	}

	// saves the data and redirect to all customers list
	@PostMapping("/save")
	public String save(@ModelAttribute("/save") Customers customer) {

		// saves the new customer
		customerservice.save(customer);

		// redirect to home page
		return "redirect:/";
	}

	// views all customers
	@GetMapping("/")
	public String allCustomerss(Model theModel) {
		List<Customers> customer = customerservice.findAll();
		theModel.addAttribute("Customers", customer);
		return "customers-list";
	}

	// visits the update-form for specified customer Id
	@GetMapping("/edit/{customerId}")
	public String edit(@PathVariable(value = "customerId") int customerId, Model theModel) {

		// locates the customer record to be updated
		Customers customer = customerservice.findById(customerId);
		theModel.addAttribute("Customers", customer);

		// sends to update form
		return "update-form";
	}

	// updates the customer data and redirects to all customers list
	@PostMapping("update/{customerId}")
	public String update(@ModelAttribute("update/{customerId}") Customers customer) {

		// updates the customer
		customerservice.update(customer);

		return "redirect:/";
	}

	// deletes customer record after pop-up confirmation
	@GetMapping("/delete/{customerId}")
	public String delete(@PathVariable int customerId) {

		// deletes the customer
		customerservice.delete(customerId);

		return "redirect:/";

	}
}
