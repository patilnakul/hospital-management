<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.entity.User"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Appointment</title>
<%@include file="component/allcss.jsp"%>

</head>
<body class="home">
	<%@ include file="component/navbar.jsp"%>
    <%@ include file="component/css.jsp"%>
	<c:if test="${ empty userObj}">
		<c:redirect url="User_login.jsp">
		</c:redirect>
	</c:if>

	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card ">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>

						<table class="table table-dark text-light ">
							<thead>
								<tr class="table-dark">
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Disease</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>
								</tr>
							</thead>
							<tbody>
								<%
									User user = (User) session.getAttribute("userObj");
									AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
									DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
									List<Appointment> list = dao.getAllAppointByLoginUser(user.getId());

									for (Appointment ap : list) {
										Doctor d = dao2.getDoctorById(ap.getDoctorId());
								%>
								<tr>
									<th><%=ap.getFullName()%></th>
									<td><%=ap.getGender()%></td>
									<td><%=ap.getAge()%></td>
									<td><%=ap.getAppoinDate()%></td>
									<td><%=ap.getDiseases()%></td>
									<td><%=d.getFullName()%></td>
									<td>
										<%
											if ("Pending".equals(ap.getStatus())) {
										%> <a href="#" class="btn btn-sm text-light btn-warning"><i
											class="fa-solid fa-clock fa-lg"></i> Pending</a> <%
 	                                     } else {
                                               %> 
                                                 <%=ap.getStatus()%>
                                               <%
 	                                         }
                                          %>
									</td>
								</tr>
								<%
									}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>

			<div class="col-md-3  p-3">
				<img src="image/doc_appoint.png" class="img-fluid" alt="...">
			</div>
		</div>
	</div>

</body>
</html>
