<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!--  
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
-->

<title><c:out value="${title}">Product Crud App</c:out></title>
<style>

:root {
  --primary: #23967F;
  --secondary: #ffee00;
  --gray: #e0e0e0;
  --light: #fff;
  --dark: rgb(35, 35, 35);
}

.z-100 {
  z-index: 100;
}

.t-primary {
  color: var(--primary) !important;
}

.b-primary {
  background-color: var(--primary) !important;
}

.f-12 {
  font-size: 12px !important;
}

* {
  font-family: 'Lato', Arial, Helvetica, sans-serif;
}

body {
  font-size: 0.875rem;
}

.copyright {
  font-size: 12px;
  position: absolute;
  bottom: 12px;
  left: 50%;
  transform: translateX(-50%);
  width: 100%;
}

@media only screen and (min-width) {
  .copyright {
    display: none;
  }
}
.alert-box {
  box-shadow: 10px 10px 30px #00000005;
  position: fixed;
  top: 130px;
  right: 30px;
  z-index: 9999;
}

.auto-suggestion {
  position: absolute;
  z-index: 9999;
  width: 80%;
}

.auto-suggestion .list-group-item:hover {
  cursor: pointer;
}
.auto-suggestion .list-group-item {
  width: 100%;
}

/* .pagination {
  margin: 0 auto;
  margin-top: 4em;
  display: flex;
  justify-content: center;
}

.pagination li {
  text-align: center;
}

.pagination .disabled {
  color: var(--secondary);
}
.pagination .active {
  color: var(--secondary);
} */

/*==============================
=>  Override Bootstrap
================================*/
.btn-primary,
.btn-primary:hover {
  background-color: var(--primary);
  border-color: var(--primary);
}

.btn:hover {
  opacity: 0.95;
}

.btn-primary:focus,
.btn-primary:not(:disabled):not(.disabled):active,
.btn-primary:not(:disabled):not(.disabled):active:focus {
  background-color: var(--primary);
  box-shadow: 0 0 0 0.2rem #6a60a990;
}

.btn-secondary,
.btn-secondary:hover {
  background-color: var(--secondary);
  border-color: var(--secondary);
}

.btn-secondary:focus,
.btn-secondary:not(:disabled):not(.disabled):active,
.btn-secondary:not(:disabled):not(.disabled):active:focus {
  border-color: var(--secondary);
  background-color: var(--secondary);
  box-shadow: 0 0 0 0.2rem #ffbc4290;
}

/*==============================
=>  NavBar
================================*/

.navbar-brand {
  padding: 10px;
  position: relative;
}

.navbar-brand__logo {
  height: 40px;
  padding-right: 8px;
}

.navbar-brand__name {

  font-family: 'Trebuchet MS';
  font-size: 24px;
  bottom: 22px;
  padding-left: 2px;
  font-weight: bold;
  letter-spacing: 0px;
  /* color: var(--primary); */
  color: #00d8b3;
  position: absolute;
}

.navbar-brand__name__lower {

  font-family: Verdana, Geneva, Tahoma, sans-serif;
  font-size: 13px;
  bottom: 8px;
  padding-left: 2px;
  font-weight: thin;
  letter-spacing: 2px;
  /* color: var(--primary); */
  color: #008c74;
  position: absolute;
}

/*==============================
=>  Sidebar
================================*/

.sidebar {
  position: relative;
  z-index: 100;
  box-shadow: inset -1px 0 0 rgba(0, 0, 0, 0.1);
  margin-top: 60px;
  height: calc(100vh - 60px);
  padding-top: 10px;
  overflow-x: hidden;
  overflow-y: hidden;
}

.sidebar ul {
  width: 100%;
}

.sidebar .nav-item {
  margin: 5px 0;
  width: 100%;
  padding: 0 15px;
  backface-visibility: hidden;
  transition: all 0.3s;
}

.sidebar .nav-link {
  padding: 8px;
  font-weight: 500;
  color: #333;
  backface-visibility: hidden;
  transition: all 0.3s ease-in-out;
}

.sidebar .nav-link i {
  display: inline-block;
  margin-right: 10px;
  font-size: 16px;
  backface-visibility: hidden;
  transition: all 0.3s ease-in-out;
}

.sidebar .nav-link.active,
.sidebar .nav-link:hover {
  background-color: var(--primary);
  border-radius: 100px;
  color: #fff;
  opacity: 0.95;
  padding-left: 30px;
}

.sidebar .nav-link.active i,
.sidebar .nav-link:hover i {
  font-size: 15px;
}

.sidebar-heading {
  font-size: 0.75rem;
  text-transform: uppercase;
}

/*==============================
=>  Content Area
================================*/

.content-area {
  padding-top: 72px;
}

@media only screen and (min-width: 768px) {
  .content-area {
    padding-top: 48px;
  }
}

.content-header {
  color: var(--primary);
}

/* Content-box */
.table td {
  vertical-align: middle;
}

.table__header {
  background-color: var(--primary);
  color: var(--secondary);
}

.table__header th {
  padding: 15px;
}

.table__body td {
  padding: 10px 15px;
}

.table__actions a:not(:last-child) {
  display: inline-block;
  margin-right: 15px;
}

.table__actions-btn,
.table__actions-btn:hover {
  display: inline-block;
  font-size: 14px;
  line-height: 0;
  padding-top: 0;
  padding-bottom: 0;
  color: var(--primary);
  text-decoration: none;
  transition: color 0.2s;
}

.table__actions-btn:not(:last-of-type) {
  margin-bottom: 5px;
}

.table__actions-btn:hover {
  color: var(--secondary);
}

tr .details-box,
tr .address-box {
  max-width: 220px;
}

tr td,
.table thead th {
  border: 2px solid #6a60a920;
  text-align: center;
}

.table tr .name {
  text-align: left;
}

.expense-box {
  width: 525px;
  margin: 0 auto;
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 10px;
  text-align: left;
}

.expense-box span {
  display: flex;
  justify-content: space-between;
  padding-left: 12px;
  background-color: #6a60a910;
  border-radius: 10px;
  align-items: flex-start;
}

.expense-box strong {
  display: block;
  border-radius: 10px;
  letter-spacing: 0.5px;
  color: var(--dark);
  background-color: var(--secondary);
  padding: 0 12px;
}
.expense-box strong small {
  font-size: 11px;
  font-weight: bolder;
}

/*==============================
=>  Dashboard
================================*/

.dashboard-intro {
  background-color: var(--primary);
  color: #fff;
  opacity: 0.95;
  margin-top: 28px;
  border-radius: 3px;
}

.dashboard-intro p {
  line-height: 0;
}

/*==============================
=> Login Page
================================*/
.login {
  height: 100vh;
  display: -ms-flexbox;
  display: -webkit-box;
  display: flex;
  -ms-flex-align: center;
  -ms-flex-pack: center;
  -webkit-box-align: center;
  align-items: center;
  -webkit-box-pack: center;
  justify-content: center;
  padding-top: 40px;
  padding-bottom: 40px;
  background-color: #f5f5f5;
}

.form-signin {
  width: 100%;
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}

.form-signin .checkbox {
  font-weight: 400;
}

.form-signin .form-control {
  position: relative;
  box-sizing: border-box;
  height: auto;
  padding: 10px;
  font-size: 16px;
}

.form-signin .form-control:focus {
  z-index: 2;
}

.form-signin input[type='email'] {
  margin-bottom: -1px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

.form-signin input[type='password'] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}
</style>
