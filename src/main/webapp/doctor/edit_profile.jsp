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
<title>Edit Doctor Details</title>
<%@include file="../component/allcss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<%@include file="../component/css.jsp"%>

	<c:if test="${empty doctObj}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>

	<div class="container p-5 ">
		<div class="row">
	        <div class="col-md-5 offset-md-3">
				<div class="card paint-card ">
					<div class="card-body  ">
					<p class="fs-4 text-center fw-bold mt-3 ">Edit Profile</p>
						<c:if test="${not empty succMsg}">
							<p class="text-center text-success fs-6">${succMsg}</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>

						<c:if test="${not empty errorMsg}">
							<p class="text-center text-danger fs-6">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<form action="../doctorUpdateProfile" method="post">
						
							<div class="mb-3">
								<label class="form-label">Full Name</label>
                                <input type="text" required readonly value="${doctObj.fullName}" name="fullname" class="form-control" autocomplete="off">
							</div>
							
							<div class="mb-3">
								<label class="form-label">DOB</label> 
								<input type="date" required name="dob" class="form-control" value="${doctObj.dob}" autocomplete="off">
		 					</div>
							
							<div class="mb-3">
								<label class="form-label">Qualification</label>
								 <input required name="qualification" type="text" class="form-control"  value="${doctObj.qualification}" autocomplete="off">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> 
								<select name="spec" required class="form-control">
									<option>${doctObj.specialist}</option>
									<% SpecialistDao dao=new SpecialistDao(DBConnect.getConn());
                                        List<Specalist> list =dao.getAllSpecialist();
                                       for(Specalist s:list)
                                      {%>
									    <option><%=s.getSpecialistName()%></option>
									<%}
                                   %>

								</select>
							</div>
							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required readonly  value="${doctObj.email}" name="email" class="form-control" autocomplete="off">
							</div>
							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required name="mobno"  value="${doctObj.mobNo}" class="form-control" autocomplete="off">
							</div>
							<input type="hidden" name="id" value="${doctObj.id}">
							
							<div class="text-center">
								<button type="submit"
									class="btn bg-success text-white text-center text-white mt-4 p-2 "
									style="width: 50%; margin: auto;">Update</button>
							</div>
						</form>
					</div>
				</div>
	</div>

	
	</div>
</div>
</body>
</html>