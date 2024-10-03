<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Login Page</title>
<%@include file="component/allcss.jsp"%>

</head>
<body class="doctor">
	<%@ include file="component/navbar.jsp"%>

	<%@include file="component/css.jsp"%>

	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<img src="logo/doctor_login.png" alt="Profile Image" class="profile-image">

						<p class="fs-4 fw-bold text-success text-center">Doctor Login</p>

						<c:if test="${not empty succMsg}">
							<p class="text-center text-success fs-6">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-6">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="doctorLogin" method="post">

							<div class="mb-3">
								<label class="form-label">Email address</label> <input
									name="email" type="email" class="form-control"
									autocomplete="off" required>
							</div>

							<div class="mb-3">
								<label class="form-Label">Password</label> <input
									name="password" type="password" class="form-control"
									autocomplete="off" required>
							</div>

							<div class="text-center">
								<button type="submit"
									class="btn bg-success text-white text-center text-white mt-4 p-2 "
									style="width: 35%; margin: auto;border-radius: 1.25rem;">Login</button>
							</div>

						</form>
						<br>
					</div>
					
				</div>
			</div>
		</div>
	</div>

</body>
</html>