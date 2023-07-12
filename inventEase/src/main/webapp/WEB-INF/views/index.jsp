<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="./base1.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- Favicon -->
    <link
      rel="shortcut icon"
      href="../images/favicon.ico"
      type="image/x-icon"
    />
    <!-- Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Lato:400,700,900&display=swap"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="../images/icons/style.css" />
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../vendors/bootstrap.min.css" />
    <!-- Main CSS -->
    <link rel="stylesheet" href="../styles/main.css" />

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
          Dominic
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
            position-fixed
            z-100
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
          <div class="dashboard-intro text-center p-3">
            <h3 class="display-4">👨‍💻</h3>
            <h5 class="mb-3">Welcome, Martian!</h5>
            <p>Inventory Management System</p>
          </div>
          <div class="overview card border-success text-uppercase my-3">
            <div class="card-header bg-success border-success">
              <h2 class="h4 text-light text-center my-3">Sales Overview</h2>
            </div>
            <div class="container mb-4">
              <div class="row justify-content-center text-center text-md-left">
                <div class="col-md-12">
                  <div class="search-area mt-4 mt-md-5 mb-4">
                    <form action="/" method="POST">
                      <div class="container">
                        <div
                          class="
                            row
                            d-flex
                            justify-content-center
                            align-items-start
                          "
                        >
                          <div class="col-lg-4 mb-3 mr-lg-3">
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
                                placeholder="Enter Customer ID / Product Code "
                              />
                            </div>
                          </div>
                          <div class="col-lg-7 d-flex">
                            <div class="input-group mr-4">
                              <div class="input-group-prepend">
                                <div class="input-group-text">
                                  <i class="ic-calendar"></i>
                                </div>
                              </div>
                              <input
                                type="date"
                                class="form-control"
                                name="startDate"
                              />
                              <input
                                type="date"
                                class="form-control"
                                name="endDate"
                              />
                            </div>

                            <button type="submit" class="btn btn-success mr-2">
                              <i class="ic-magnifying-glass"></i>
                              Search
                            </button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="col-sm-4 border-success text-center">
                  <div class="card-body bg-light text-success b">
                    <h3 class="display-5">&#x9f3; 238409</h3>
                    <h6 class="card-title text-muted">Total Sales</h6>
                  </div>
                </div>
                <div class="col-sm-4 border-success text-center">
                  <div class="card-body bg-light text-success b">
                    <h3 class="display-5">&#x9f3; 238409</h3>
                    <h6 class="card-title text-muted">Paid</h6>
                  </div>
                </div>
                <div class="col-sm-4 border-success text-center">
                  <div class="card-body bg-light text-warning b">
                    <h3 class="display-5">&#x9f3; 238409</h3>
                    <h6 class="card-title text-muted">Unpaid</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="overview card border-info text-uppercase my-3">
            <div class="card-header bg-info border-info">
              <h2 class="h4 text-light text-center my-3">
                Inventories Overview
              </h2>
            </div>
            <div class="container mb-4">
              <div class="row justify-content-center text-center text-md-left">
                <div class="col-md-12">
                  <div class="search-area mt-4 mt-md-5 mb-4">
                    <form action="/" method="POST">
                      <div class="container">
                        <div
                          class="
                            row
                            d-flex
                            justify-content-center
                            align-items-start
                          "
                        >
                          <div class="col-lg-4 mb-3 mr-lg-3">
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
                                placeholder="Enter Product Code "
                              />
                            </div>
                          </div>
                          <div class="col-lg-7 d-flex">
                            <div class="input-group mr-4">
                              <div class="input-group-prepend">
                                <div class="input-group-text">
                                  <i class="ic-calendar"></i>
                                </div>
                              </div>
                              <input
                                type="date"
                                class="form-control"
                                name="startDate"
                              />
                              <input
                                type="date"
                                class="form-control"
                                name="endDate"
                              />
                            </div>

                            <button type="submit" class="btn btn-info mr-2">
                              <i class="ic-magnifying-glass"></i>
                              Search
                            </button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="col-sm-4 border-info text-center">
                  <div class="card-body bg-light text-info b">
                    <h3 class="display-5">&#x9f3; 238409</h3>
                    <h6 class="card-title text-muted">Total Stocks</h6>
                  </div>
                </div>
                <div class="col-sm-4 border-info text-center">
                  <div class="card-body bg-light text-info b">
                    <h3 class="display-5">&#x9f3; 238409</h3>
                    <h6 class="card-title text-muted">Used</h6>
                  </div>
                </div>
                <div class="col-sm-4 border-info text-center">
                  <div class="card-body bg-light text-warning b">
                    <h3 class="display-5">&#x9f3; 238409</h3>
                    <h6 class="card-title text-muted">Left Over</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <div class="overview card border-danger text-uppercase my-3">
            <div class="card-header bg-danger border-danger">
              <h2 class="h4 text-light text-center my-3">Purchases Overview</h2>
            </div>
            <div class="container mb-4">
              <div class="row justify-content-center text-center text-md-left">
                <div class="col-md-12">
                  <div class="search-area mt-4 mt-md-5 mb-4">
                    <form action="/" method="POST">
                      <div class="container">
                        <div
                          class="
                            row
                            d-flex
                            justify-content-center
                            align-items-start
                          "
                        >
                          <div class="col-lg-5 mb-3 mr-lg-3">
                            <div class="input-group">
                              <select
                                class="form-control"
                                name="category"
                                required
                              >
                                <option value="all">All Categories</option>
                                <option value="equipments">Equipments</option>
                                <option value="transport">Transport</option>
                                <option value="salaryUtilities">
                                  Salary & Utilities
                                </option>
                                <option value="retailHoldings">
                                  Retail H/D
                                </option>
                                <option value="stationeryTools">
                                  Stationery & Tools
                                </option>
                                <option value="marketing">Marketing</option>
                                <option value="courierCommission">
                                  Courier & Commission
                                </option>
                                <option value="others">Others</option>
                              </select>
                            </div>
                          </div>
                          <div class="col-lg-6 d-flex">
                            <div class="input-group mr-4">
                              <div class="input-group-prepend">
                                <div class="input-group-text">
                                  <i class="ic-calendar"></i>
                                </div>
                              </div>
                              <input
                                type="date"
                                class="form-control"
                                name="startDate"
                              />
                              <input
                                type="date"
                                class="form-control"
                                name="endDate"
                              />
                            </div>

                            <button type="submit" class="btn btn-danger mr-2">
                              <i class="ic-magnifying-glass"></i>
                              Search
                            </button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="col-sm-8 border-danger text-center">
                  <div class="card-body bg-light text-danger b">
                    <h3 class="display-5">&#x9f3; 238409</h3>
                    <h6 class="card-title text-muted">Total Expenses</h6>
                  </div>
                </div>
              </div>
            </div>
          </div>

        </main>
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery.slim.min.js"></script>
    <!-- Bootstrap Js -->
    <script src="../vendors/bootstrap.min.js"></script>
    <!-- Main Js -->
    <script src="../scripts/main.js"></script>
  </body>
</html>
