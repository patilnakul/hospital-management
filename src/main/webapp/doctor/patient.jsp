<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page isELIgnored="false"%>
    
    
<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Status</title>
<%@include file="../component/allcss.jsp"%>

</head>
<body>
	<%@include file="navbar.jsp"%>


	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center text-success">Patient Details</p>
						<c:if test="${not empty errorMsg }">
						    <p class="fs-4 text-center text-danger">${errorMsg}</p>
						    <c:remove var="errorMsg" scope="session"/>
						</c:if>
						<c:if test="${not empty succMsg}">
						    <p class=" fs-4 text-center text-success"></p>
						    <c:remove var="succMsg" scope="session"/>
						</c:if>
						<table class="table table-dark">
							<thead>
								<tr class="table-dark">
									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appointment Date</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Diseases</th>
									<th scope="col">Status</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							<%
							Doctor d = (Doctor)session.getAttribute("doctObj");
							AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
							List<Appointment> list=dao.getAllAppointByDoctorLogin(d.getId());
							for(Appointment ap:list){
							%>
								 <tr>
							         <th><%=ap.getFullName() %></th>
							         <td><%=ap.getGender() %></td>
							         <td><%=ap.getAge() %></td>
							         <td><%=ap.getAppoinDate() %></td>
							         <td><%=ap.getEmail() %></td>
							         <td><%=ap.getPhNo() %></td>
							         <td><%=ap.getDiseases() %></td>
							         <td><%=ap.getStatus() %></td>
							         
							         <td>
							         <%
							         if("Pending".equals(ap.getStatus()))
							         {%>
							          <a href="comment.jsp?id=<%= ap.getId() %>" class="btn btn-success btn-sm">Comment</a>	
							        <%}else
							         {%>
 							           <a href="#" class="btn btn-success btn-sm disabled"><i class="fa-solid fa-comment"></i> Comment</a>	
                                    <%}
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
		</div>
	</div>
</body>
</html>