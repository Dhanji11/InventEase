package inventEase.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

import inventEase.dao.CustomerDao;
import inventEase.dao.ProductDao;
import inventEase.dao.PurchaseDao;
import inventEase.dao.SupplierDao;
import inventEase.dao.UserDao;
import inventEase.model.Customer;
import inventEase.model.Product;
import inventEase.model.Purchase;
import inventEase.model.Supplier;
import inventEase.model.User;

@Controller
public class MainController {
	@Autowired
	UserDao userDao;
	@Autowired
	ProductDao productDao;
	@Autowired
	CustomerDao customerDao;
	@Autowired
	SupplierDao supplierDao;
	@Autowired
	PurchaseDao purchaseDao;
	
	
	
	@RequestMapping("/")
	String home(Model m)
	{
		return "signup";
	}
	@RequestMapping("/login")
	String signin(Model m)
	{
		return "login";
	}
	
	// register the new user
	@RequestMapping(value="/create-user")
	public RedirectView addUserToDb(@ModelAttribute User user,HttpServletRequest request, Model model)
	{
		System.out.println("user registered"+user);
		userDao.createUser(user);
		//model.addAttribute("user",user);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/redirect-dashboard");
		return redirectView;
	}
	
	// login
	@RequestMapping("/login-user")
	//public String processForm(@RequestParam("password") String password, @RequestParam("email") String email) {
	 public RedirectView processForm(@ModelAttribute User user, HttpServletRequest request) {
		List<User> users = userDao.getUsers();
	    System.out.println("email:"+user.getEmail()+" "+"password:"+user.getPassword());
	    RedirectView redirectView = new RedirectView();
	    for(User u: users)
		{
			if(u.getEmail().equals(user.getEmail())&& u.getPassword()==user.getPassword())
				redirectView.setUrl(request.getContextPath()+"/redirect-dashboard");
				
				return redirectView;
			// if email and password matches successfully then redirect him to dashboard
		}
		redirectView.setUrl(request.getContextPath()+"/");
		// if user enters wrong email or password then return him to same register page	
	    return redirectView; 	    
	}
	
	// after login or registration
	@RequestMapping("redirect-dashboard")
	String dashboard(Model m,HttpServletRequest request)
	{
		return "index";
	}
	
	// redirecting to product page
	@RequestMapping("redirect-product")
	String product(Model m,HttpServletRequest request)
	{
		Product product = productDao.getProduct(0);
		//System.out.println("Single product value is: "+product);
		List<Product> products = productDao.getProducts();
		m.addAttribute("products",products);
		return "product";
	}
	
	// redirecting to inventory page
		@RequestMapping("redirect-inventories")
		String inventoryRedirect(Model m,HttpServletRequest request)
		{
			List<Product> products = productDao.getProducts();
			m.addAttribute("products",products);
			return "inventories";
		}
	
	// show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model m)
	{	
		m.addAttribute("title","Add Product");
		return "addProduct";
	}
	
	// handle add product form 
	@RequestMapping(value="/handle-product")
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request)
	{
		System.out.println("----------handle product called----------------");
		System.out.println("product value "+product);
		System.out.println("----------handle product called----------------");
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/redirect-product");
		return redirectView;
	}
	
	// delete product 
		@RequestMapping("/delete-product/{productId}")
		public RedirectView deleteProduct(@PathVariable("productId") int id,HttpServletRequest request)
		{
			productDao.deleteProduct(id);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/redirect-product");
			return redirectView;
		}
		
		// update product 
		@RequestMapping("/update-product/{productId}")
		public String updateProduct(@PathVariable("productId") int pid,Model model)
		{
			System.out.println("update 1 called");
			Product product = productDao.getProduct(pid);
			System.out.println("in updateProduct"+product); 
			model.addAttribute("product",product);	
			System.out.println("update 2 called");
			return "updateProduct";
		}
		
		// search any product based on productName 
		@RequestMapping("/search-product/{productName}")
		public String searchProduct(@PathVariable("productName") String productName,HttpServletRequest request,Model model)
		{
			System.out.println("value of productName "+productName);
			model.addAttribute("products",null);
			List<Product> products = productDao.getProducts();
			for(Product p: products)
			{
				if(p.getProductName().equals(productName))
				{
					System.out.println("search result: "+p);
					List<Product>l=new ArrayList<Product>();
					l.add(p);
					model.addAttribute("products",l);
					System.out.println("p value equals to"+l);	
				}
					
			}			
			return "product";
		}
		
//---------------------------------------customer supplier handlers---------------
	
		// redirecting to customer page
		@RequestMapping("redirect-customers")
		String customer(Model m,HttpServletRequest request)
		{
			List<Customer> customers = customerDao.getCustomers();
			m.addAttribute("customers",customers);
			return "customers";
		}	
		
		@RequestMapping("/add-customers")
		String customer(Model m)
		{
			return "addCustomer";
		}
		
		// handle add customer form 
		@RequestMapping(value="/handle-customers")
		public RedirectView handleCustomer(@ModelAttribute Customer customer,HttpServletRequest request)
		{
			System.out.println("----------handle customer called----------------");
			System.out.println("product value "+customer);
			System.out.println("----------handle customer called----------------");
			customerDao.createCustomer(customer);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/redirect-customers");
			return redirectView;
		}
		
		// redirecting to supplier page
		@RequestMapping("redirect-suppliers")
		String supplier(Model m,HttpServletRequest request)
		{
			List<Supplier> suppliers = supplierDao.getSuppliers();
			m.addAttribute("suppliers",suppliers);
			return "suppliers";
		}
		
		// register the new supplier
		@RequestMapping(value="/create-suppliers")
		public RedirectView addSupplier(@ModelAttribute Supplier supplier,HttpServletRequest request, Model model)
		{
			System.out.println(supplier);
			supplierDao.createSupplier(supplier);
			//model.addAttribute("user",user);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/redirect-suppliers");
			return redirectView;
		}
		
		@RequestMapping("/add-suppliers")
		String supplier(Model m)
		{
			return "addSupplier";
		}
		
		// handle add supplier form 
		@RequestMapping(value="/handle-suppliers")
		public RedirectView handleSupplier(@ModelAttribute Supplier supplier,HttpServletRequest request)
		{
			System.out.println("----------handle customer called----------------");
			System.out.println("product value "+supplier);
			System.out.println("----------handle product called----------------");
			supplierDao.createSupplier(supplier);
			RedirectView redirectView = new RedirectView();
			redirectView.setUrl(request.getContextPath()+"/redirect-suppliers");
			return redirectView;
		}
//-------------------------------------Purchase and Sale-------------------------
		
		// redirecting to purchase page
		@RequestMapping("redirect-purchases")
		String redirectPurchase(Model m,HttpServletRequest request)
		{
			List<Purchase> purchases = purchaseDao.getPurchases();
			System.out.println("in redirect purchases"+purchases);
			m.addAttribute("purchases",purchases);
			return "purchases";
		}
		
		// returns addPuchase form
		@RequestMapping("/add-purchases")
		String addPurchase(Model m)
		{
			return "addPurchase";
		}
		
		// handle add purchase form 
		@RequestMapping(path="/handle-purchases")
		public RedirectView handlePurchase(@RequestParam("productCode")int productCode,
				@RequestParam("purchaseQuantity")int purchaseQuantity,
				@RequestParam("date")String date,
				@RequestParam("supplierCode")int supplierCode,
				HttpServletRequest request)
		{
			System.out.println("----------handle Purchase called----------------");
			System.out.println(productCode+" "+purchaseQuantity+" "+date+" "+supplierCode);
			RedirectView redirectView = new RedirectView();
			
			Product product = productDao.getProduct(productCode);
			Supplier supplier = supplierDao.getSupplier(supplierCode);
			if(product==null)
				redirectView.setUrl(request.getContextPath()+"/add-product");
			else if(supplier==null)
				redirectView.setUrl(request.getContextPath()+"/add-suppliers");
			else
			{
				Purchase p=new Purchase();
				p.setDate(new Date());
				p.setProduct(product);
				p.setSupplier(supplier);
				p.setPurchaseQuantity(purchaseQuantity);
				redirectView.setUrl(request.getContextPath()+"/redirect-purchases");
				purchaseDao.createPurchase(p);			
				product.setQuantity(purchaseQuantity+product.getQuantity());
				productDao.createProduct(product);
			}
			
			return redirectView;
		}		
				
}

