package inventEase.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import inventEase.model.Product;

@Component
public class ProductDao {
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	//create product
	@Transactional
	public void createProduct(Product product)
	{
		this.hibernateTemplate.saveOrUpdate(product);// if the product with given id is already present
	} // then this method simply update the product is product is not present in db then it will store
	// a new product in db
	
	// load all products
	public List<Product> getProducts()
	{
		List<Product>products=this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	//delete Product
	@Transactional
	public void deleteProduct(int pid)
	{
		Product p = this.hibernateTemplate.get(Product.class,pid);
		this.hibernateTemplate.delete(p);
	}
	
	// get a single product
	public Product getProduct(int pid)
	{
		return this.hibernateTemplate.get(Product.class,pid);
	}
}
