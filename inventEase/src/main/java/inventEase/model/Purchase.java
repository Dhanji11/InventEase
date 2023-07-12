package inventEase.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Purchase {	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int purchaseId;	
	private int purchaseQuantity;
	@Temporal(TemporalType.DATE)
    private Date date;
	@ManyToOne
	Product product;
	@ManyToOne
	Supplier supplier;
	public Purchase() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Purchase(int purchaseId, int purchaseQuantity, Date date, Product product, Supplier supplier) {
		super();
		this.purchaseId = purchaseId;
		this.purchaseQuantity = purchaseQuantity;
		this.date = date;
		this.product = product;
		this.supplier = supplier;
	}
	public int getPurchaseId() {
		return purchaseId;
	}
	public void setPurchaseId(int purchaseId) {
		this.purchaseId = purchaseId;
	}
	public int getPurchaseQuantity() {
		return purchaseQuantity;
	}
	public void setPurchaseQuantity(int purchaseQuantity) {
		this.purchaseQuantity = purchaseQuantity;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	@Override
	public String toString() {
		return "Purchase [purchaseId=" + purchaseId + ", purchaseQuantity=" + purchaseQuantity + ", date=" + date
				+ ", product=" + product + ", supplier=" + supplier + "]";
	}	
	
}
