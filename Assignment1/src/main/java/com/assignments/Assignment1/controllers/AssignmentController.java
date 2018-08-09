package com.assignments.Assignment1.controllers;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.assignments.Assignment1.beans.Employee;
import com.assignments.Assignment1.exceptions.DublicateEntryException;
import com.assignments.Assignment1.repositories.EmployeeRepository;

@Controller
public class AssignmentController {

	@Autowired
	private EmployeeRepository employeeRepository;

	@GetMapping("/")
	public String enterDetails(ModelMap model) {
		model.addAttribute("employee", new Employee());
		return "NewEmployeeForm";
	}

	@PostMapping("/save")
	public String saveEmployee(@ModelAttribute Employee employee, ModelMap model) {
		Employee savedEmployee;
		try {
			Optional<Employee> optional = employeeRepository.findById(employee.getEmpId());
			if(optional.isPresent())
			{
				throw new DublicateEntryException();
			}
			savedEmployee = employeeRepository.save(employee);
		} catch (Exception e) {
			return "SaveFailed";
		}
		if (savedEmployee != null) {
			model.addAttribute("empId", employee.getEmpId());
			model.addAttribute("empLocation", employee.getEmpAddress());
			model.addAttribute("empEmail", employee.getEmpEmail() + "@wipro.com");
			model.addAttribute("empName", String.valueOf(employee.getEmpFirstName() + " " + employee.getEmpLastName()));
			return "SaveSuccess";
		} else
			return "SaveFailed";
	}
	
	@GetMapping("/displayAll")
	public String displayAll(ModelMap model)
	{
		List<Employee> employeeList = employeeRepository.findAll();
		model.addAttribute("employeeList", employeeList);
		return "ShowAllEmployee";
	}
	
	/*@GetMapping("/search")
	public String search(@RequestParam("searchitem") Long searchitem, ModelMap model)
	{
		Optional<Employee> optional = employeeRepository.findById(searchitem);
		if(optional.isPresent())
		{
			Employee emp = optional.get();
			model.addAttribute("employee", emp);
			return "";
		}
	}*/
}
