<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base1.jsp" %>
</head>
<!--  value="${product.getProductCode()}" -->
<body>
	<h1>This is Update supplier page</h1>
	
	<form action="${pageContext.request.contextPath}/handle-suppliers">
		<input type="text" value="${supplier.getSupplierCode()}" name="supplierCode" disabled>
	  
	  <div class="row">
	    <div class="col">
	      <input name="supplierName" value="${supplier.getSupplierName()}" type="text" class="form-control" placeholder="Supplier name">
	    </div>
	    <div class="col">
	      <input name="supplierAddress" value="${supplier.getSupplierAddress()}" type="text" class="form-control" placeholder="Supplier Address">
	    </div>
	  </div>
	  
	  <div class="row">
			<div class="col">
				<input name="supplierContact" value="${supplier.getSupplierContact()}"
					type="number" class="form-control" placeholder="Contact">
			</div>
		</div>
	  
  	  <div class="contaoner text-center">
  	  <a href="${pageContext.request.contextPath}/redirect-suppliers" class="btn btn-primary">Back</a>
  	  <button type="submit" class="btn btn-primary">Update</button>
  	  </div>
	</form>
</body>
</html>