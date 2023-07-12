package inventEase.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customer  {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int customerCode;
	private String customerName;
	private String customerAddress;
	private int customerContact;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Customer(int customerCode, String customerName, String customerAddress, int customerContact) {
		super();
		this.customerCode = customerCode;
		this.customerName = customerName;
		this.customerAddress = customerAddress;
		this.customerContact = customerContact;
	}
	public int getCustomerCode() {
		return customerCode;
	}
	public void setCustomerCode(int customerCode) {
		this.customerCode = customerCode;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public int getCustomerContact() {
		return customerContact;
	}
	public void setCustomerContact(int customerContact) {
		this.customerContact = customerContact;
	}
	@Override
	public String toString() {
		return "Customer [customerCode=" + customerCode + ", customerName=" + customerName + ", customerAddress="
				+ customerAddress + ", customerContact=" + customerContact + "]";
	}
	
	
}