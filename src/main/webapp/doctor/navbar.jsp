<style>
body {
  background: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)),url("../image/Doctors.jpg");
  background-size: cover;
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-position: center;
  transition: background 0.8s ease;
  animation: fadeIn 1s ease-in-out forwards;
}

body:hover {
  background-image: linear-gradient(rgba(255, 255, 255, 0.5), rgba(255, 255, 255, 0.5)), url("../image/Doctors.jpg");
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

.backimg{
	height: 30vh;
	background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.8)),url(../image/appoint_design.jpg);
	background-position: 50% 100%;
	background-repeat: no-repeat;
	background-attachment: fixed;
	text-align: center;
	color: #fff;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
    background-size: cover;
    background-position: center;
}
</style>




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<nav class="navbar navbar-expand-lg  navbar-light bg-secondary">
	<div class="container-fluid">
		<a class="navbar-brand  brand text-light" href="#"><img
			src="../logo/brand.png" class="img-fluide " alt="..." height="45px">&ensp;MediCare</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active text-light" href="index.jsp"><i class="fa-solid fa-house-chimney-medical"></i> HOME</a></li>
				<li class="nav-item"><a class="nav-link active text-light" href="patient.jsp"> <i class="fa-solid fa-bed-pulse fa-lg" style="color: #ff8652;"></i>&nbsp;PATIENT</a></li>
				<li class="nav-item dropdown"><a class="btn dropdown-toggle btn-light" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
				 <img src="../logo/doc.png" class="img-fluide" alt="..." style="height: 25px;"> ${doctObj.fullName} </a>
					<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
						<li><a class="dropdown-item" href="edit_profile.jsp">Edit Profile &ensp;<i class="fa-solid fa-pen-to-square "style="color: #224c9b;"></i></a></li>
					    <li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
						<li><a class="dropdown-item" href="../doctorLogout">Logout &ensp;<i class="fa-solid fa-right-from-bracket" style="color: #224c9b;"></i></a></li>
					</ul>
			  </li>
			</ul>
		</div>
	</div>
</nav>