<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
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
          <ul class="nav flex-column align-items-center align-items-md-start">
            <li class="nav-item">
              <a class="nav-link active" href="index.html">
                <i class="ic-home"></i>
                Dashboard
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="inventories.html">
                <i class="ic-archive"></i>
                Inventories
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="products.html">
                <i class="ic-shopping-cart"></i>
                Products
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="customers.html">
                <i class="ic-v-card"></i>
                Customers
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="sales.html">
                <i class="ic-calculator"></i>
                Sales
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="purchases.html">
                <i class="ic-credit-card"></i>
                Purchases
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="suppliers.html">
                <i class="ic-shop"></i>
                Suppliers
              </a>
            </li>
            <!-- <li class="nav-item">
              <a class="nav-link" href="servicing.html">
                <i class="ic-tools"></i>
                Servicing
              </a>
            </li> -->
          </ul>
          <!-- <h6 class="sidebar-heading px-3 mt-4 mb-1 text-center text-muted">
            <span class="text-center text-md-left">Access Controls</span>
          </h6> -->
          <!-- <ul
            class="
              nav
              flex-column
              mb-2
              align-items-center align-items-md-start
            "
          >
            <li class="nav-item">
              <a class="nav-link" href="#">
                <i class="ic-user"></i>
                Users
              </a>
            </li>
          </ul> -->
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
            <h1 class="h3 content-header">Dashboard</h1>
            <div class="content-action btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
                <button type="button" class="btn btn-sm btn-primary">
                  Share
                </button>
                <button type="button" class="btn btn-sm btn-outline-secondary">
                  Export
                </button>
              </div>
              <button
                type="button"
                class="btn btn-sm btn-outline-secondary dropdown-toggle"
              >
                <span data-feather="calendar"></span>
                This week
              </button>
            </div>
          </div>

          <div class="content-box"></div>
        </main>
      </div>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery.slim.min.js"></script>
    <!-- PopperJS -->
    <script src="../vendors/popper.min.js"></script>
    <!-- Bootstrap Js -->
    <script src="../vendors/bootstrap.min.js"></script>
    <!-- Main Js -->
    <script src="../scripts/main.js"></script>
  </body>
</html>
