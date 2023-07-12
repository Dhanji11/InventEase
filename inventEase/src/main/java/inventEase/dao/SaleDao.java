package inventEase.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import inventEase.model.Sale;

public class SaleDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	//create Sale
	@Transactional
	public void createSale(Sale sale)
	{
		this.hibernateTemplate.saveOrUpdate(sale);// if the Customer with given id is already present
	} // then this method simply update the Customer if Customer is not present in db then it will store
	// a new Customer in db
	
	// load all Sale
	public List<Sale> getSale()
	{
		List<Sale>sales=this.hibernateTemplate.loadAll(Sale.class);
		
		return sales;
	}
	
	//delete Sale
	@Transactional
	public void deleteSale(int sid)
	{
		Sale s = this.hibernateTemplate.get(Sale.class,sid);
		this.hibernateTemplate.delete(s);
	}
	
	// get a single Sale
	public Sale getSale(int sid)
	{
		return this.hibernateTemplate.get(Sale.class,sid);
	}

}
