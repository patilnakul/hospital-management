<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password</title>
<%@include file="component/allcss.jsp"%>

</head>
<body class="user">
	<%@ include file="component/navbar.jsp"%>
	<%@include file="component/css.jsp"%>

	<c:if test="${ empty userObj}">
		<c:redirect url="User_login.jsp">
		</c:redirect>
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

						<form action="userChangePassword" method="post">

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
							<input type="hidden" value="${userObj.id}" name="uid">

							<div class="text-center">
								<button type="submit"
									class="btn bg-success text-white text-center text-white mt-4 p-2"
									style="width: 50%; margin: auto;">Change Password</button>
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