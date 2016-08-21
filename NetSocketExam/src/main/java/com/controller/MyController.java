package com.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.dao.AddressDao;
import com.dao.CustomerDao;
import com.pojo.Address;
import com.pojo.Customer;

@Controller
public class MyController {
	
	ApplicationContext context = new ClassPathXmlApplicationContext("conf/ApplicationContext.xml");
	CustomerDao cDao = context.getBean(CustomerDao.class);
	
//	@Autowired
//	private CustomerDao cDao;
	
	private String url;
	@RequestMapping("/login")
	public String login(@RequestParam("username") String username,HttpSession session){
		session.setAttribute("customer", "customer");
		try {
			List<Customer> customers = cDao.selectCustomer();
			for(Customer customer:customers){
				System.out.println(customer.getFirst_name());
				if(customer.getFirst_name().equals(username)){
					System.out.println(customer.getFirst_name());
					url="success";
					break;
				}
				url = "fail";
			}
		} catch (IOException e) {
			e.printStackTrace();
			return "fail";
		}
		
		return url;
	}

	@RequestMapping("/customerInfo")
	public String CustomerInfo( Map<String, Object> map) {
		List<Customer> customers;
		try {
			customers = cDao.selectCustomer();
			map.put("customers", customers);
			return "CustomerInfo";
		} catch (IOException e) {
			e.printStackTrace();
			return "fail";
		}

	}

	@RequestMapping("/newCustomer")
	public String newCustomer(){
		return "newCustomer";
	}
	
	@RequestMapping(value = "/insertCustomer", method = RequestMethod.GET)
	public String insertCustomer(@RequestParam("first_name") String first_name,
			@RequestParam("last_name") String last_name, @RequestParam("email") String email,
			@RequestParam("address_id") int address_id, Customer customer) {
		customer.setStore_id(1);
		customer.setFirst_name(first_name);
		customer.setLast_name(last_name);
		customer.setEmail(email);
		customer.setAddress_id(address_id);
		customer.setCreate_date(new Date());
		customer.setLast_update(new Date());
		try {
			cDao.insetCustomer(customer);
			return "success";
		} catch (IOException e) {
			e.printStackTrace();
			return "fail";
		}
	}

	@RequestMapping(value = "deleteCustomer", method = RequestMethod.GET)
	public String deleteCustomer(@RequestParam("id") int id) {
		System.out.println(id);
		try {
			cDao.deleteCustomer(id);
			return "success";
		} catch (IOException e) {
			e.printStackTrace();
			return "fail";
		}
	}


	@RequestMapping(value = "updateCustomer", method = RequestMethod.GET)
	public String updateReady(@RequestParam("id") int customer_id, Map<String, Object> map) {
		try {
			Customer customer = cDao.selectCustomerForUpdate(customer_id);
			map.put("customer", customer);
			return "update";
		} catch (IOException e) {
			e.printStackTrace();
			return "fail";
		}
	}

	@RequestMapping(value = "updateCustomer2", method = RequestMethod.GET)
	public String update(@RequestParam("customer_id") int customer_id,
			@RequestParam("first_name") String first_name, @RequestParam("last_name") String last_name,
			@RequestParam("email") String email, @RequestParam("address_id") int address_id,Customer customer) {
			customer.setStore_id(1);
			customer.setFirst_name(first_name);
			customer.setLast_name(last_name);
			customer.setEmail(email);
			customer.setAddress_id(address_id);
			customer.setLast_update(new Date());
			customer.setCustomer_id(customer_id);
		try {
			cDao.updateCustomer(customer);
			return "success";
		} catch (Exception e) {
			e.printStackTrace();
			return "fail";
		}
	}
	
	@RequestMapping("exit")
	public String exit(HttpSession session){
		session.setAttribute("customer", "");
		return "success";
	}
 	
}
