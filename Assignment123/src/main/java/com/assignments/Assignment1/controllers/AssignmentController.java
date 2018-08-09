package com.assignments.Assignment1.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AssignmentController {
	
	@GetMapping("/getbankname")
	public String bankName()
	{
		return "State Bank Of India";
	}

	@GetMapping("/getbankaddress")
	public String bankAddress()
	{
		return "Gachibowli branch, Hyderabad";
	}
}
