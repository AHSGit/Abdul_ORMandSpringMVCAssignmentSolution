package com.greatlearning.CustomerRelationship.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

// controller to map the home page
@Controller
public class HomeController {

	@RequestMapping("/")
	public String homePage() {
		return "customers-list";
	}

}
