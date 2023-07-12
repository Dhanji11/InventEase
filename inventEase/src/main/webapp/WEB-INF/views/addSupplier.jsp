<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    
    <%@ include file="./base1.jsp"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <title>Add Supplier Page</title>
</head>

<body>

    <div
            id="addsupplier"
            tabindex="-1"
            role="dialog"
            data-backdrop="static"
          >
            <div class="modal-dialog modal-dialog-centered" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title t-primary">New Supplier</h5>
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
                      <label for="name">Supplier Name</label>
                      <input type="text" class="form-control" id="supplierName" name="supplierName" placeholder="John Doe" required />
                    </div>
                    <div class="form-group">
                      <label for="address">Supplier Address</label>
                      <input type="text" class="form-control" id="supplierAddress" name="supplierAddress" placeholder="22B Baker Street, London" required />
                    </div>
                    <div class="form-group">
                      <label for="phone">Supplier Contact Number</label>
                      <input type="number" class="form-control" id="supplierContact" name="supplierContact" placeholder="9000-100-100"  required  />
                    </div>
                    <div class="modal-footer">
             <a href="${pageContext.request.contextPath}/redirect-suppliers" class="btn btn-primary">Back</a>
	 	     <a id="link" href="" class="btn btn-primary">Add</a>
              
              <script>
  	  	""
			document.getElementById('link').addEventListener('click',function() {
			var name = document.getElementById("supplierName").value;
			var address = document.getElementById("supplierAddress").value;
			var contact = document.getElementById("supplierContact").value;
			
	        this.href='${pageContext.request.contextPath}/handle-suppliers?supplierName='+ encodeURIComponent(name)+
	        		'&supplierAddress='+encodeURIComponent(address)+'&supplierContact='+encodeURIComponent(contact);
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