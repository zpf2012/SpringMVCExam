package com.dao;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Component;

import com.pojo.Customer;

@Component
public interface CustomerDao {
	public List<Customer> selectCustomer() throws IOException;
	
	public void insetCustomer(Customer customer) throws IOException;
	
	public void deleteCustomer(int customer_id) throws IOException;
	
	public void updateCustomer(Customer customer) throws IOException;
	
	public Customer selectCustomerForUpdate(int customer_id) throws IOException;
	
	
}
