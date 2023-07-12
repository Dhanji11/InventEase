<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="./base1.jsp" %>
</head>
<!--  value="${product.getProductCode()}" -->
<body>
	<h1>This is Update Customer page</h1>
	
	<form action="${pageContext.request.contextPath}/handle-customers">
		<input type="text" value="${customer.getCustomerCode()}" name="customerCode" disabled>
	  
	  <div class="row">
	    <div class="col">
	      <input name="customerName" value="${customer.getCustomerName()}" type="text" class="form-control" placeholder="Customer name" required>
	    </div>
	    <div class="col">
	      <input name="customerAddress" value="${customer.getCustomerAddress()}" type="text" class="form-control" placeholder="Customer Address" required>
	    </div>
	  </div>
	  
	  <div class="row">
			<div class="col">
				<input name="customerContact" value="${customer.getCustomerContact()}"
					type="text" class="form-control" placeholder="Customer Contact" required>
			</div>
			
		</div>
	  
	 
  	  <div class="contaoner text-center">
  	  <a href="${pageContext.request.contextPath}/redirect-customers" class="btn btn-primary">Back</a>
  	  <button type="submit" class="btn btn-primary">Update</button>
  	  </div>
	</form>
</body>
</html>