<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Appointment</title>
<%@include file="component/allcss.jsp"%>

</head>
<body class="appointment">
	<%@ include file="component/navbar.jsp"%>
	<%@include file="component/css.jsp"%>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container  p-5">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" class="d-block w-100" src="image/doc_appoint.png"
					height="455px">
			</div>

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-3 text-success fw-bold">User Appointment</P>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-4">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<c:if test="${not empty succMsg }">
							<p class=" fs-5 text-center text-success">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<form class="row g-3" action="addAppointment" method="post">

							<input type="hidden" name="userid" value="${userObj.id}">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-Label">Full Name</label> <input
									type="text" class="form-control" name="fullname" required
									autocomplete="off" readOnly value="${userObj.fullName }">
							</div>

							<div class="col-md-6">
								<label>Gender</label> <select class="form-control" name="gender"
									required>
									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-Label">Age</label> <input
									required type="number" class="form-control" name="age"
									autocomplete="off">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Appointment
									Date</label> <input type="date" class="form-control"
									name="appoint_date" required autocomplete="off">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-Label">Email</label> <input
									type="email" class="form-control" name="email" required
									autocomplete="off" readonly value="${userObj.email }">
							</div>

							<div class="col-md-6">
								<label for="inputEmoil4" class="form-Label">Phone No</label> <input
									maxlength="10" type="number" class="form-control" name="phno"
									required autocomplete="off">
							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Diseases</label> <input
									type="text" class="form-control" name="diseases" required
									autocomplete="off">
							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Doctor</label> <select
									class="form-control" name="doct" required>
									<option value="">--select--</option>

									<%
										DoctorDao dao = new DoctorDao(DBConnect.getConn());
										List<Doctor> list = dao.getAllDoctor();
										for (Doctor d : list) {
									%>
									<option value=" <%=d.getId()%>">
										<%=d.getFullName()%> (<%=d.getSpecialist()%>)
									</option>
									<%
										}
									%>
								</select>
							</div>

							<div class="col-md-12">
								<label>Full Address</label>
								<textarea name="address" class="form-control" rows="3" cols=""
									required autocomplete="off"></textarea>
							</div>
							<div class="d-grid gap-2">
								<c:if test="${empty userObj}">
									<a href="User_login.jsp"
										class="btn btn-success text-center text-white mt-4 p-2"
										style="width: 50%; margin: auto;">Submit</a>
								</c:if>

								<c:if test="${not empty userObj}">

									<button
										class="btn btn-success text-center  text-white mt-4 p-2"
										style="width: 50%; margin: auto; border-radius: 1.25rem;">Submit</button>
								</c:if>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>




