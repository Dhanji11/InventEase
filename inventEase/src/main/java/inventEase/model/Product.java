package inventEase.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
		private int productCode;
		private String productName;
		private String description;
		private long productsp;
		private long productcp;
		private String brand;
		private int quantity;
		public Product() {
			super();
			// TODO Auto-generated constructor stub
		}
		public Product(int quantity,int productCode, String productName, String description, long productsp, long productcp,
				String brand) {
			super();
			this.productCode = productCode;
			this.productName = productName;
			this.description = description;
			this.productsp = productsp;
			this.productcp = productcp;
			this.brand = brand;
			this.quantity = quantity;
		}
		public int getProductCode() {
			return productCode;
		}
		public void setProductCode(int productCode) {
			this.productCode = productCode;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public long getProductsp() {
			return productsp;
		}
		public void setProductsp(long productsp) {
			this.productsp = productsp;
		}
		public long getProductcp() {
			return productcp;
		}
		public void setProductcp(long productcp) {
			this.productcp = productcp;
		}
		public String getBrand() {
			return brand;
		}
		public void setBrand(String brand) {
			this.brand = brand;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		@Override
		public String toString() {
			return "Product [productCode=" + productCode + ", productName=" + productName + ", description="
					+ description + ", productsp=" + productsp + ", productcp=" + productcp + ", brand=" + brand
					+ ", quantity=" + quantity + "]";
		}		
}
