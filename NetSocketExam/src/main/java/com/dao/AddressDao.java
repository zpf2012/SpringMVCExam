package com.dao;

import org.springframework.stereotype.Component;

import com.pojo.Address;

@Component
public interface AddressDao {
	public Address selectAddress(Integer id);
}
