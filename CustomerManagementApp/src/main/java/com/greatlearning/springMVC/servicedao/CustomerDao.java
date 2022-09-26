package com.greatlearning.springMVC.servicedao;

import java.util.List;

import com.greatlearning.springMVC.model.Customer;

public interface CustomerDao {
	
	public void addCustomer(Customer customer);
	public List<Customer> getCustomers();
	public void deleteCustomer(int cid);
	public Customer getCustomer(int cid);

}
