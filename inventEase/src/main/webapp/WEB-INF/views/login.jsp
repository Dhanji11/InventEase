<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%@ include file="./base1.jsp"%>
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

    <title>Login</title>
  </head>

  <body>
    <div class="login text-center bg-dark text-light">
      <form class="form-signin" action="${pageContext.request.contextPath}/login-user">
        <img class="mb-3" src="../images/logo.png" height="72" />
        <h1 class="h5 mb-5 text-warning font-weight-normal">
          Sign In
        </h1>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input
          name="email"
          type="email"
          id="email"
          class="form-control"
          placeholder="Email address"
          required
          autofocus
        />
        <label for="inputPassword" class="sr-only">Password</label>
        <input
          name="password"
          type="password"
          id="psw"
          class="form-control"
          placeholder="Password"
          required
        />
        <div class="checkbox mb-3">
          <label>
            <input type="checkbox" value="remember-me" /> Remember me
          </label>
        </div>
        <button type="submit" class="btn btn-lg btn-primary btn-block">
          Sign in
        </button>    
        
        <br>
        <h6><a href="${pageContext.request.contextPath}/">Don't have an account? Sign Up here</a></h6>
      </form>
    </div>

    <!-- jQuery -->
    <script src="../vendors/jquery.slim.min.js"></script>
    <!-- Bootstrap Js -->
    <script src="../vendors/bootstrap.min.js"></script>
    <!-- Main Js -->
    <script src="../scripts/main.js"></script>
  </body>
</html>
