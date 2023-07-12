package inventEase.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import inventEase.model.Purchase;

@Component
public class PurchaseDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	//create Purchase
	@Transactional
	public void createPurchase(Purchase purchase)
	{
		this.hibernateTemplate.saveOrUpdate(purchase);// if the Customer with given id is already present
	} // then this method simply update the Customer if Customer is not present in db then it will store
	// a new Customer in db
	
	// load all Purchase
	public List<Purchase> getPurchases()
	{
		List<Purchase>purchases=this.hibernateTemplate.loadAll(Purchase.class);
		
		return purchases;
	}
	
	//delete Purchase
	@Transactional
	public void deletePurchase(int pid)
	{
		Purchase p = this.hibernateTemplate.get(Purchase.class,pid);
		this.hibernateTemplate.delete(p);
	}
	
	// get a single Purchase
	public Purchase getPurchase(int pid)
	{
		return this.hibernateTemplate.get(Purchase.class,pid);
	}

}
