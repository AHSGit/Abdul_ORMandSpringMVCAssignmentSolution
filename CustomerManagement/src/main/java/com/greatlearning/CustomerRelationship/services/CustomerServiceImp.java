package com.greatlearning.CustomerRelationship.services;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.greatlearning.CustomerRelationship.model.Customers;

@Repository
public class CustomerServiceImp implements CustomerService {

	@SuppressWarnings("unused")
	@Autowired
	private SessionFactory sessionFactory;

	// create session
	private Session session;

	@Autowired
	CustomerServiceImp(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		try {
			session = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
		}
	}

	@Transactional
	public List<Customers> findAll() {

		Transaction tx = session.beginTransaction();

		// find all the records from the database table
		@SuppressWarnings("unchecked")
		List<Customers> customers = session.createQuery("from Customers").list();
		tx.commit();
		return customers;
	}

	@Transactional
	public Customers findById(int customerId) {

		Customers customer = new Customers();

		Transaction tx = session.beginTransaction();

		// find record with Id from database table
		customer = session.get(Customers.class, customerId);
		tx.commit();
		return customer;
	}

	@Transactional
	public void save(Customers customer) {

		Transaction tx = session.beginTransaction();

		// save session object
		session.save(customer);
		tx.commit();
	}

	@Transactional
	public void update(Customers customer) {

		Transaction tx = session.beginTransaction();

		// clear any ongoing sessions before update
		session.clear();

		// update session object
		session.update(customer);
		tx.commit();

	}

	@Transactional
	public void delete(int customerId) {

		Customers customer = new Customers();

		Transaction tx = session.beginTransaction();

		// find record with Id from database table
		customer = session.get(Customers.class, customerId);

		// delete session object for corresponding customer Id
		session.delete(customer);
		tx.commit();

	}

}
