<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>

<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List" %>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.dao.DoctorDao" %>
<%@page import="com.entity.Doctor" %>

<style>
body {
  background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)),url("../image/resception.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.8s ease;
  animation: fadeIn 2s ease-in-out forwards;
}

body:hover {
  background-image: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)), url("../image/resception.jpg");
}

@keyframes fadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes fadeOut {
  from {
    opacity: 1;
  }
  to {
    opacity: 0;
  }
}


.navbar{
    background-color:#08697a;
}
.container {
    max-width: 100%;
    padding: 0 15px;
    margin: 0 auto;
}

.text-center {
    text-align: center;
}
.text{
    color:#176d83;
}

.fs-2 {
    font-size: 2rem;
}

.p-5 {
    padding: 3rem;
}

@media only screen and (max-width: 600px) {
    .p-5 {
        padding: 2rem;
    }
}

@media only screen and (min-width: 601px) and (max-width: 992px) {
    .fs-2 {
        font-size: 1.5rem;
    }
}

@media only screen and (min-width: 993px) {
    .fs-2 {
        font-size: 2.5rem;
    }
}

.card {
    margin-bottom: 20px;
    height: 100%;
}

.card:hover {
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transform: translateY(-5px);
}

.card {
    transition: box-shadow 0.3s ease, transform 0.3s ease;
}

@media only screen and (max-width: 767px) {
    .row>.col-md-6:last-child {
        margin-bottom: 0;
    }
}

.navbar-nav .nav-link.active {
    position: relative;
    overflow: hidden;
}

.navbar-nav .nav-link.active::before {
    content: "";
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 2px;
    background-color: #ffffff;
    transform: scaleX(0);
    transition: transform 0.3s ease-in-out;
}

.navbar-nav .nav-link.active:hover::before {
    transform: scaleX(1);
}
  .paint-card {
    background-color: #f8f9fa; 
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1); 
}

.paint-card .card-body {
    padding: 20px;
    width: 100%; 
} 

.btn.bg-custom {
    background-color:#01763f; 
    border-color: #000000; 
    color: #ffffff;
      border-radius: 1.25rem;
    
 } 

.btn.bg-custom:hover {
    background-color: #0075443a;
    border-color: #ffffff; 
      border-radius: 1.25rem;
    
}
.bg-success{
      border-radius: 1.25rem;

}
.btn.col-md-12 {
    width: 30%;
    text-align: center;
    margin-top: 20px;
  border-radius: 1.25rem;
    margin-left: 143px;
} 

.back {
    text-align: center;
  }
  
  .back a {
    padding: 10px 20px;
    text-decoration: underline;
    transition: background-color 0.3s ease;
  }
  
  .back a:hover {
    color: #f80505;
  }
  .footer{
     background-color:#0383a3;
  }
  
  .brand {
font: italic small-caps bold 16px/2 cursive;
}
 
 
 #footer {
  background: #eeeeee;
  padding: 0 0 30px 0;
  color: #555555;
  font-size: 14px;
  background-color: #061b3b;
  
}

#footer .footer-top {
  background: #011635;;
  padding: 60px 0 30px 0;
}

#footer .footer-top .footer-info {
  margin-bottom: 30px;
}

#footer .footer-top .footer-info h3 {
  font-size: 24px;
  margin: 0 0 20px 0;
  padding: 2px 0 2px 0;
  line-height: 1;
  font-weight: 700;
}

#footer .footer-top .footer-info p {
  font-size: 14px;
  line-height: 24px;
  margin-bottom: 0;
  font-family: "Roboto", sans-serif;
}

#footer .footer-top .social-links a {
  font-size: 18px;
  display: inline-block;
  background: #1977cc;
  color: #fff;
  line-height: 1;
  padding: 8px 0;
  margin-right: 4px;
  border-radius: 4px;
  text-align: center;
  width: 36px;
  height: 36px;
  transition: 0.3s;
}

#footer .footer-top .social-links a:hover {
  background: #65c9cd;
  text-decoration:none;
}
a{
  text-decoration:none;

}

#footer .footer-top h4 {
  font-size: 16px;
  font-weight: 600;
  position: relative;
  padding-bottom: 12px;
}

#footer .footer-top .footer-links {
  margin-bottom: 30px;
}

#footer .footer-top .footer-links ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

#footer .footer-top .footer-links ul i {
  padding-right: 2px;
  color: #3fbbc0;
  font-size: 18px;
  line-height: 1;
}

#footer .footer-top .footer-links ul li {
  padding: 10px 0;
  display: flex;
 align-items: center;
}

#footer .footer-top .footer-links ul li:first-child {
  padding-top: 0;
}

#footer .footer-top .footer-links ul a {
  color: #555555;
  transition: 0.3s;
  display: inline-block;
  line-height: 1;
}

#footer .footer-top .footer-links ul a:hover {
  color: #3fbbc0;
}

#footer .footer-top .footer-newsletter form {
  margin-top: 30px;
  background: #fff;
  padding: 6px 10px;
  position: relative;
  border: 1px solid #d5d5d5;
  border-radius: 4px;
}

#footer .footer-top .footer-newsletter form input[type="email"] {
  border: 0;
  padding: 4px;
  width: calc(100% - 110px);
}

#footer .footer-top .footer-newsletter form input[type="submit"] {
  position: absolute;
  top: -1px;
  right: -1px;
  bottom: -1px;
  border: 0;
  background: none;
  font-size: 16px;
  padding: 0 20px;
  background: #1977cc;
  color: #fff;
  transition: 0.3s;
  border-radius: 0 4px 4px 0;
}

#footer .footer-top .footer-newsletter form input[type="submit"]:hover {
  background: #65c9cd;
}

#footer .copyright {
  text-align: center;
  padding-top: 30px;
}

#footer .credits {
  padding-top: 10px;
  text-align: center;
  font-size: 13px;
  
}
   <link href="vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
  
 <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    
      /*--------------------------------------------------------------
# End Footer
--------------------------------------------------------------*/ 
</style>

<nav class="navbar navbar-expand-lg navbar-dark ">
	<div class="container-fluid">
			<a class="navbar-brand brand " href="#"><img src="../logo/brand.png" class="img-fluide " alt="..." height="45px"> MediCare</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarTogglerDemo01"
			aria-controls="navbarTogglerDemo01" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
    <div class="collapse navbar-collapse navbar" id="navbarTogglerDemo01">
		<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"> <i
						class="fa-solid fa-house "></i> HOME
				</a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="doctor.jsp"> DOCTOR </a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="view_doctor.jsp"> VIEW DOCTOR </a></li>
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="patient.jsp"><i class="fa-solid fa-bed-pulse fa-lg" style="color: #ff8652;"></i>&nbsp;PATIENT </a></li>
			</ul>

			<form class="d-flex" action="#">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false"><i class="fa-solid fa-user-tie"></i> Admin</button>
					<ul class="dropdown-menu " aria-labelledby="dropdownMenuButton1">
					
						<li>
						
						     <a class="dropdown-item" href="../adminLogout">Logout &ensp;<i class="fa-solid fa-right-from-bracket" style="color: #224c9b;"></i></a>
					
						</li>
						
					</ul>
				</div>
				
				
			</form>
		</div>
	</div>
</nav>