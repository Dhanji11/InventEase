<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="./base1.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>IMS</title>
  </head>

  <body>
    <nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 pr-3">
      <a class="navbar-brand col-1 col-md-2 mr-0" href="/">
        <img class="navbar-brand__logo pl-2" src="../images/logo.png" />
        <span class="navbar-brand__name">Inventory</span>
        <span class="navbar-brand__name__lower">Management System</span>
      </a>
      <button
        class="btn btn-secondary navbar-toggler d-md-none"
        type="button"
        data-toggle="collapse"
        data-target="#sideBar"
      >
        <svg
          xmlns="http://www.w3.org/2000/svg"
          width="30"
          height="30"
          viewBox="0 0 30 30"
          role="img"
          focusable="false"
        >
          <title>Menu</title>
          <path
            stroke="currentColor"
            stroke-linecap="round"
            stroke-miterlimit="10"
            stroke-width="2"
            d="M4 7h22M4 15h22M4 23h22"
          />
        </svg>
      </button>

      <ul
        class="
          navbar-nav
          flex-row
          w-100
          justify-content-center justify-content-md-end
          align-items-center
          text-white
          py-2
          bg-md-light
        "
      >
        <li class="nav-item mr-2"><script> document.write(new Date().toDateString()); </script></li>
        <li class="nav-item mr-2">|</li>
        <li class="nav-item text-warning font-weight-bold mr-3">
          Martian
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">
            <i class="ic-share-alternitive"></i>&nbsp; Sign out</a
          >
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div
          class="
            col-md-2
            bg-light
            navbar navbar-expand-md
            p-0
            pl-md-3
            mt-5 mt-md-0
            overflow-hidden
          "
        >
          <nav
            class="
              collapse
              navbar-collapse
              sidebar
              flex-column
              align-items-md-start
            "
            id="sideBar"
          >

          <!-- side-nav-bar -->

          <ul class="nav flex-column align-items-center align-items-md-start">
            <li class="nav-item">
              <a class="nav-link active" href="${pageContext.request.contextPath}/redirect-dashboard">
                <i class="ic-home"></i>
                Dashboard
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/redirect-inventories">
                <i class="ic-archive"></i>
                Inventories
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/redirect-product">
                <i class="ic-shopping-cart"></i>
                Products
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/redirect-customers">
                <i class="ic-v-card"></i>
                Customers
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/redirect-sales">
                <i class="ic-calculator"></i>
                Sales
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/redirect-purchases">
                <i class="ic-credit-card"></i>
                Purchases
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="${pageContext.request.contextPath}/redirect-suppliers">
                <i class="ic-shop"></i>
                Suppliers
              </a>
            </li>
          </ul>
          
          <!-- side-nav-bar-END -->
          
        </nav>
      </div>

        <main
          role="main"
          class="content-area col-md-9 ml-sm-auto col-lg-10 px-2 px-md-4"
        >
          <div
            class="
              d-flex
              justify-content-between
              flex-wrap flex-md-nowrap
              align-items-center
              border-bottom
              mt-0
              mb-3
              mt-md-3
              py-4
            "
          >
            <h1 class="h3 content-header">
              <i class="ic-archive pr-2"></i>
              Inventories
            </h1>
            
          </div>

          <!-- Search Area -->

          <div class="search-area mb-4 mt-4 mt-md-5">
            <form action="" method="" class="">
              <div class="container">
                <div
                  class="row d-flex justify-content-center align-items-start"
                >
                  <div class="col-lg-5 mb-3 mr-lg-3 justify-self-center">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <div class="input-group-text">
                          <i class="ic-magnifying-glass"></i>
                        </div>
                      </div>
                      <input
                        type="text"
                        class="form-control"
                        name=" searchQuery"
                        placeholder="Enter Product ID"
                      />
                    </div>
                  </div>
                  <div class="col-lg-2 d-flex">
                    <button type="submit" class="btn btn-primary mr-2">
                      <i class="ic-magnifying-glass"></i>
                      Search
                    </button>
                  </div>
                </div>
              </div>
            </form>
          </div>

          

          <div class="content-box">
            <div class="table-responsive">

              <!-- TABLE START -->

              <table class="table table-striped table-sm">
                <thead class="table__header">
                  <tr>
                    <th>Product Code</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Cost Price</th>
                    <th>Sell Price</th>               
                  </tr>
                </thead>
                <tbody class="table__body">
                   <c:forEach items="${products}" var="p">
			    <tr>
			      <th scope="row">${p.getProductCode()}</th>
			      <td>${p.getProductName()}</td>
			      <td>${p.getQuantity()}</td>
			      <td>&#8377;${p.getProductcp()}</td>
			      <td>&#8377;${p.getProductsp()}</td>   
			    </tr>
		  		</c:forEach>
                </tbody>
              </table>

              <!-- TABLE END -->
            </div>
          </div>
        </main>
      </div>
    </div>

  </body>
</html>
