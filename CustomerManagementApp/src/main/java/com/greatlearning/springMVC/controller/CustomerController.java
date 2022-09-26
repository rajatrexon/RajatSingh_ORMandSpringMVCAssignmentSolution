package com.greatlearning.springMVC.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.greatlearning.springMVC.model.Customer;
import com.greatlearning.springMVC.servicedao.CustomerDao;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerDao customerdao;
	
	@RequestMapping("/")
	public String home(Model m) {
		List<Customer> customers=customerdao.getCustomers();
		m.addAttribute("customerlist",customers);
		return "index";
	}

	@RequestMapping("/add-customer")
	public String addCustomer(Model m) {
       m.addAttribute("title", "Add Customer");
		return "add-customer-page";
	}
	
	@RequestMapping(value="/handle-customer" ,method=RequestMethod.POST)
	public RedirectView handleCustomer(@ModelAttribute Customer customer,HttpServletRequest request) {
		customerdao.addCustomer(customer);
		
		RedirectView redirect = new RedirectView();
		redirect.setUrl(request.getContextPath()+"/");
		return redirect;
	}
	
	@RequestMapping("/delete/{customerId}")
	public RedirectView deletehandler(@PathVariable("customerId") int customerId ,HttpServletRequest request) {
		this.customerdao.deleteCustomer(customerId);
		RedirectView redirect = new RedirectView();
		redirect.setUrl(request.getContextPath()+"/");
		return redirect;
	}
	
	@RequestMapping("/update/{customerId}")
	public String updatehandler(@PathVariable("customerId") int customerId ,Model m) {
		Customer customer =this.customerdao.getCustomer(customerId);
		
		m.addAttribute("customer",customer);
		
		return "update-form";
	}
}
