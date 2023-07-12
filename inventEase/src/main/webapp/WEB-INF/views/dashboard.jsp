<html>

<head>
<%@ include file="./base1.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
</head>

<body>
<div class="container text-center">
		<h1>Dashboard Page</h1>
	</div>

	<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">Prcoduct Code</th>
		      <th scope="col">Name</th>
		      <th scope="col">Brand</th>
		      <th scope="col">Description</th>
		      <th scope="col">Cost Price</th>
		      <th scope="col">Selling Price</th>
		      <th scope="col">Action</th>
		    </tr>
		  </thead>
		  
		  <tbody>
		  <c:forEach items="${products}" var="p">
			    <tr>
			      <th scope="row">${p.getProductCode()}</th>
			      <td>${p.getProductName()}</td>
			      <td>${p.getBrand()}</td>
			      <td>${p.getDescription() }</td>
			      <td>&#8377;${p.getProductcp()}</td>
			      <td>&#8377;${p.getProductsp()}</td>
			      <td>
			      <a href="delete-product/${p.getProductCode()}"><i class="material-icons">DELETE </i></a>
			      <a href="update-product/${p.getProductCode()}"><i class="material-icons">UPDATE</i></a>
			      </td>
			    </tr>
			    <!-- <i class="material-icons">&#xe872;</i> -->
		  </c:forEach>
		  </tbody>
	</table>
	<div class="container text-center">
		<a id="id" href="add-product" onclick="change();" class="btn btn-primary">Add</a>
		<script type="text/javascript">
		function change()
		{
		    document.getElementById("id").href = "${pageContext.request.contextPath}/add-product";
		}
		</script>
	</div>
	
	<div class="container text-center">
		<input id="search" type="text" /><a id="anchor" onclick="changeLink();" href="" class="btn btn-primary">Search</a>
		<script type="text/javascript">
		function changeLink()
		{
		    var text=document.getElementById("search").value;
		    document.getElementById("anchor").href = "${pageContext.request.contextPath}/search-product/"+text ;
		}
		</script>
	</div>
	
</body>
</html>
