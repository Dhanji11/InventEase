package inventEase.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Supplier {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int supplierCode;
	private String supplierName;
	private String supplierAddress;
	private int supplierContact;
	@Override
	public String toString() {
		return "Supplier [supplierCode=" + supplierCode + ", supplierName=" + supplierName + ", supplierAddress="
				+ supplierAddress + ", supplierContact=" + supplierContact + "]";
	}
	public int getSupplierCode() {
		return supplierCode;
	}
	public void setSupplierCode(int supplierCode) {
		this.supplierCode = supplierCode;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierAddress() {
		return supplierAddress;
	}
	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}
	public int getSupplierContact() {
		return supplierContact;
	}
	public void setSupplierContact(int supplierContact) {
		this.supplierContact = supplierContact;
	}
	public Supplier(int supplierCode, String supplierName, String supplierAddress, int supplierContact) {
		super();
		this.supplierCode = supplierCode;
		this.supplierName = supplierName;
		this.supplierAddress = supplierAddress;
		this.supplierContact = supplierContact;
	}
	public Supplier() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	
}