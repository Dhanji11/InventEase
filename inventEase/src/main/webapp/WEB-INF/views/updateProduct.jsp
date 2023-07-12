<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="./base1.jsp"%>
    <title>IMS</title>
</head>

<body>

    <div
    id="addProduct"
    tabindex="-1"
    role="dialog"
    data-backdrop="static"
  >
    <div class="modal-dialog modal-dialog-centered" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title t-primary">Update Product</h5>
          <button
            type="button"
            class="close"
            aria-label="Close"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="${pageContext.request.contextPath}/handle-product" method="">
            <div class="form-group">
             <input type="text" value="${product.getProductCode()}" name="productCode">
              <label for="name">Product Name</label>
              <input value="${product.getProductName()}" type="text" class="form-control" name="productName" id="productName"/>
            </div>
            <div class="form-group">
              <label for="cost">Cost Price</label>
              <input value="${product.getProductcp()}" type="number" class="form-control" name="productcp" id="productcp" />
            </div>
            <div class="form-group">
              <label for="sell">Sell Price</label>
              <input value="${product.getProductsp()}" type="number" class="form-control" name="productsp" id="productsp" />
            </div>
            <div class="form-group">
              <label for="brand">Brand</label>
              <input value="${product.getBrand()}" type="text" class="form-control" name="brand" id="brand" />
            </div>
            <div class="form-group">
	    		<label for="exampleFormControlTextarea1">Product description </label>
	    		<textarea name="description" class="form-control" id="exampleFormControlTextarea1" rows="3">${product.getDescription()}</textarea>
  	  		</div>        

            <div class="modal-footer">
              <a href="${pageContext.request.contextPath}/redirect-product"
                class="btn btn-secondary"
                data-dismiss="modal">
                <i class="ic-cross"></i> Back
              </a>
              
              <button type="submit" class="btn btn-primary">Update</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

</body>

</html>