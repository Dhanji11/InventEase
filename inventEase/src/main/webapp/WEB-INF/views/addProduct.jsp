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
          <h5 class="modal-title t-primary">Add New Product</h5>
          <button
            type="button"
            class="close"
            aria-label="Close"
          >
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="" method="">
            <div class="form-group">
              <label for="name">Product Name</label>
              <input type="text" class="form-control" name="productName" id="productName"/>
            </div>
            <div class="form-group">
              <label for="disc">Product Discription</label>
              <input type="text" class="form-control" name="description" id="description" />
            </div>
            <div class="form-group">
              <label for="cost">Cost Price</label>
              <input type="number" class="form-control" name="productcp" id="productcp" />
            </div>
            <div class="form-group">
              <label for="sell">Sell Price</label>
              <input type="number" class="form-control" name="productsp" id="productsp" />
            </div>
            <div class="form-group">
              <label for="brand">Brand</label>
              <input type="text" class="form-control" name="brand" id="brand" />
            </div>

            <div class="modal-footer">
              <a href="${pageContext.request.contextPath}/redirect-product"
                class="btn btn-secondary"
                data-dismiss="modal">
                <i class="ic-cross"></i> Back
              </a>
              <a id="link" href="" class="btn btn-primary"><i class="ic-check"></i> Add Product</a>
  	  	  <script>
			document.getElementById('link').addEventListener('click',function() {
			var name = document.getElementById("productName").value;
			var brand = document.getElementById("brand").value;
			var cp = document.getElementById("productcp").value;
			var sp = document.getElementById("productsp").value;
			var des = document.getElementById("description").value;
			
	        this.href='${pageContext.request.contextPath}/handle-product?productName='+ encodeURIComponent(name)+
	        		'&brand='+encodeURIComponent(brand)+'&productcp='+encodeURIComponent(cp)+
	        		'&productsp='+encodeURIComponent(sp)+'&description='+encodeURIComponent(des);
						});
			</script>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>

</body>

</html>