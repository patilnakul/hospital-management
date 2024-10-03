<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>

<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List" %>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.dao.DoctorDao" %>
<%@page import="com.entity.Appointment" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Treat Patient</title>
<%@include file="../component/allcss.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<%@include file="../component/css.jsp"%>

	<c:if test="${empty doctObj}">
		<c:redirect url="doctor_login.jsp"></c:redirect>
	</c:if>


	<div class="container-fulid backimg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4">Patient Comment</p>
						<%
						
						int id = Integer.parseInt(request.getParameter("id").trim());
						AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
                        Appointment ap = dao.getAppointmentById(id);
						
						%>

						<form class="row" action="../updateStatus" method="post">
							<div class="col-md-6">
								<label>Patient Name</label>
								<input type="text" readonly value="<%=ap.getFullName() %>" class="form-control">
							</div>

							<div class="col-md-6">
								<label>Age</label> 
								<input type="text" readonly value="<%=ap.getAge()%>"class="form-control">
							</div>

							<div class="col-md-6">
								<label>Mob No.</label> 
								<input type="text" readonly value="<%=ap.getPhNo() %>" class="form-control">
							</div>

							<div class="col-md-6">
								<label>Disease</label> 
								<input type="text" readonly value="<%=ap.getDiseases()%>" class="form-control">
							</div>
							
							<div class="col-md-12">
							  <br><label>Comment</label> 
							  <textarea rows="3" cols="" required name="comm" class="form-control"></textarea>
							</div>
							
							     <input type="hidden" name="id" value="<%=ap.getId() %>">
						         <input type="hidden" name="did" value="<%=ap.getDoctorId() %>">
			             
			             <div class="d-grid gap-2">
							<button class="btn btn-success text-center  text-white mt-4 p-2" style="width: 50%; margin: auto; border-radius: 1.25rem;">Submit</button>						
			             </div>
							
			           </form> 
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>