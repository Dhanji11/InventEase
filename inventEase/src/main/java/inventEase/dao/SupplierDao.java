package inventEase.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import inventEase.model.Supplier;

@Component
public class SupplierDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	//create Supplier
	@Transactional
	public void createSupplier(Supplier supplier)
	{
		this.hibernateTemplate.saveOrUpdate(supplier);// if the Supplier with given id is already present
	} // then this method simply update the Supplier if Supplier is not present in db then it will store
	// a new Supplier in db
	
	// load all Suppliers
	public List<Supplier> getSuppliers()
	{
		List<Supplier>suppliers=this.hibernateTemplate.loadAll(Supplier.class);
		
		return suppliers;
	}
	
	//delete Supplier
	@Transactional
	public void deleteSupplier(int sid)
	{
		Supplier s = this.hibernateTemplate.get(Supplier.class,sid);
		this.hibernateTemplate.delete(s);
	}
	
	// get a single Supplier
	public Supplier getSupplier(int sid)
	{
		return this.hibernateTemplate.get(Supplier.class,sid);
	}
}