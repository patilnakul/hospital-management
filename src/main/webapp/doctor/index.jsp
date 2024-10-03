<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>


<%@page import="java.util.List" %>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.dao.DoctorDao" %>
<%@page import="com.entity.Doctor" %>
<%@page import="com.dao.AppointmentDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Page</title>
<%@include file="../component/allcss.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
<%@include file="../component/css.jsp"%>

	<c:if test="${empty doctObj}">
		<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
    <%
       Doctor d = (Doctor)session.getAttribute("doctObj");
       DoctorDao dao=new DoctorDao(DBConnect.getConn());
       
    %>
	<p class="text-center p-5 fs-3 fw-bold">Doctor Dashboard</p>
	<div class="row">
			<div class="col-md-4 offset-md-2">
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
						<br> <img src="../logo/appointment.png" class="img-fluid" alt="..."
							style="height: 45px;"><br>
						<p class="fs-5 text-center ">
							Total Appointment<br><%=dao.countAppointmentByDoctorId(d.getId())%>
						</p>
					</div>
				</div>
			</div>
			</div>

</body>
</html>