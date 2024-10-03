<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<%@ include file="../component/allcss.jsp" %>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<%@include file="../component/css.jsp"%>

	<c:if test="${empty doctObj}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5 ">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card ">
					<div class="card-body  ">

						<p class="fs-4 text-center fw-bold mt-3 ">Change Password</p>
						<c:if test="${not empty succMsg}">
							<p class="text-center text-success fs-6">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-6">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>

						<form action="../doctChangePassword" method="post">

							<div class="mb-3">
								<label class="form-label">Enter New Password</label> <input
									name="newPassword" type="text" class="form-control"
									autocomplete="off" required>
							</div>

							<div class="mb-3">
								<label class="form-Label">Enter Old Password</label> <input
									name="oldPassword" type="text" class="form-control"
									autocomplete="off" required>
							</div>
							<input type="hidden" value="${doctObj.id}" name="uid">

							<div class="text-center">
								<button type="submit"
									class="btn bg-success text-white text-center text-white mt-4 p-2"
									style="width: 50%; margin: auto;">Change Password</button>
							</div>
						</form>

					</div>
				</div>
			</div>

		</div>
	</div>
</body>
</html>