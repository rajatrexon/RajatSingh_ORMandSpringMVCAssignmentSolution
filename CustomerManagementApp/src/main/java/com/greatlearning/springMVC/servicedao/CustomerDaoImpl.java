package com.greatlearning.springMVC.servicedao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.greatlearning.springMVC.model.Customer;
@Repository
@Component
public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	// Add Customer
	@Transactional
	public void addCustomer(Customer customer) {

		this.hibernateTemplate.saveOrUpdate(customer);

	}

	// get all Customer
	public List<Customer> getCustomers() {
		List<Customer> customers = this.hibernateTemplate.loadAll(Customer.class);
		return customers;
	}

	// delete the single customer
	@Transactional
	public void deleteCustomer(int cid) {
		Customer p = this.hibernateTemplate.load(Customer.class, cid);
		this.hibernateTemplate.delete(p);
	}

	// get the single product
	public Customer getCustomer(int cid) {
		return this.hibernateTemplate.get(Customer.class, cid);
	}
}