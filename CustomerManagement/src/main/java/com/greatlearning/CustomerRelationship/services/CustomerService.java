package com.greatlearning.CustomerRelationship.services;

import java.util.List;

import com.greatlearning.CustomerRelationship.model.Customers;

public interface CustomerService {

	public List<Customers> findAll();

	public Customers findById(int customerId);

	public void delete(int customerId);

	public void save(Customers customer);

	public void update(Customers customer);

}
