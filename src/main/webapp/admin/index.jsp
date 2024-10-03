<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<%@ include file="../component/allcss.jsp"%>
</head>

<body>
	<%@ include file="navbar.jsp"%>

	<c:if test="${ empty adminObj}">
		<c:redirect url="../Admin_login.jsp">
		</c:redirect>
	</c:if>

	<div class="container p-5">
		<p class="fs-3 fw-bold text-center text">Admin Dashboard</p>

		<c:if test="${not empty succMsg}">
			<p class="text-center text-success fs-6">${succMsg}</p>
			<c:remove var="succMsg" scope="session" />
		</c:if>

		<c:if test="${not empty errorMsg}">
			<p class="text-center text-danger fs-6">${errorMsg}</p>
			<c:remove var="errorMsg" scope="session" />
		</c:if>
		<%
			DoctorDao dao = new DoctorDao(DBConnect.getConn());
		%>
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text">
						<br> <img src="../logo/doctor.png" class="img-fluid"
							alt="..." style="height: 45px;"><br>
						<p class="fs-5 text-center ">
							Doctor<br><%=dao.countDoctor()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text">
						<br> <img src="../logo/user.png" class="img-fluid" alt="..."
							style="height: 45px;"><br>
						<p class="fs-5 text-center ">
							User<br><%=dao.countUser()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text">
						<br> <img src="../logo/appointment.png" class="img-fluid"
							alt="..." style="height: 45px;"><br>
						<p class="fs-5 text-center">
							Total Appointment <br><%=dao.countAppointment()%>
						</p>
					</div>
				</div>
			</div>

			<div class="col-md-4 mt-3">
				<div class="card paint-card" data-bs-toggle="modal"
					data-bs-target="#exampleModal">
					<div class="card-body text-center text">
						<br> <img src="../logo/appointment.png" class="img-fluid"
							alt="..." style="height: 45px;"> <br>
						<p class="fs-5 text-center">
							Specialist <br><%=dao.countSpecialist()%>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="../addSpecialist" method="post">
						<div class="form-group">
							<label>Enter Specialist Name</label> <input type="text"
								name="specName" class="form-control" autocomplete="off" required>
						</div>
						<div class="text-center mt-3">
							<button type="submit" class="btn btn-primary "> Add </button>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

<%@ include file="../component/footer.jsp"%>

</body>
</html>

