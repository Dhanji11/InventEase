package inventEase.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import inventEase.model.Customer;

@Component
public class CustomerDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	//create Customer
	@Transactional
	public void createCustomer(Customer customer)
	{
		this.hibernateTemplate.saveOrUpdate(customer);// if the Customer with given id is already present
	} // then this method simply update the Customer if Customer is not present in db then it will store
	// a new Customer in db
	
	// load all Customers
	public List<Customer> getCustomers()
	{
		List<Customer>customers=this.hibernateTemplate.loadAll(Customer.class);
		
		return customers;
	}
	
	//delete Customer
	@Transactional
	public void deleteCustomer(int cid)
	{
		Customer c = this.hibernateTemplate.get(Customer.class,cid);
		this.hibernateTemplate.delete(c);
	}
	
	// get a single Customer
	public Customer getCustomer(int cid)
	{
		return this.hibernateTemplate.get(Customer.class,cid);
	}
}