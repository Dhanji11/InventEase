<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="./base1.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 >

    <title>IMS</title>
</head>

<body>
  <div
            id="addPurchase"
            tabindex="-1"
            role="dialog"
            data-backdrop="static"
          >
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title t-primary">New Purchases</h5>
                  <button
                    type="button"
                    class="close"
                    data-dismiss="modal"
                    aria-label="Close"
                  >
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                  <form action="${pageContext.request.contextPath}/handle-purchases">
                    
                    <div class="form-group">
                      <label for="productCode">Product Code</label>
                      <input
                        type="text"
                        class="form-control"
                        name="productCode"
                        id="productCode"
                        placeholder="PC01"
                        required
                      />
                    </div>

                    <div class="form-group">
                      <label >Quantity</label>
                      <input
                        type="text"
                        class="form-control"
                        name="purchaseQuantity"
                        id="purchaseQuantity"
                        placeholder="10"
                        required
                      />
                    </div>

                    <div class="form-group">
                      <label for="supplier_code">Supplier Code</label>
                      <input
                        type="text"
                        class="form-control"
                        name="supplierCode"
                        id="supplierCode"
                        placeholder="SC01"
                        required
                      />
                    </div>

                    <div class="form-group">
                      <label for="purchaseDate">Purchase Date</label>
                      <div class="input-group-prepend">
                        <div class="input-group-text">
                          <i class="ic-calendar"></i>
                        </div>
                        <input
                          type="date"
                          class="form-control"
                          name="date"
                          id="date"
                        />
                      </div>
                    </div>

          <div class="modal-footer">
              <a href="${pageContext.request.contextPath}/redirect-purchases"
                class="btn btn-secondary"
                data-dismiss="modal">
                <i class="ic-cross"></i> Back
              </a>
             <button type="submit" class="btn btn-primary"><i class="ic-check"></i> Save</button>
  	  	  <!-- <script>
			function fun(){
			var pc = document.getElementById("productCode").value;
			var pq = document.getElementById("purchaseQuantity").value;
			var sc = document.getElementById("supplierCode").value;
			var date = document.getElementById("date").value;
			
	        this.href='${pageContext.request.contextPath}/handle-purchases?
	        		productCode='+ encodeURIComponent(pc)+
	        		'&purchaseQuantity='+encodeURIComponent(pq)+
	        		'&supplierCode='+encodeURIComponent(sc)+
	        		'&date='+encodeURIComponent(date);
			}
			</script> -->
         </div>
                  
                  </form>
                </div>
              </div>
            </div>
          </div>

</body>

</html>