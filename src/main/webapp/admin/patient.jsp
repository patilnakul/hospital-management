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
<title>Patient Details</title>
<%@ include file="../component/allcss.jsp"%>
<%@ include file="../component/css.jsp" %>
</head>
<body>
    <%@ include file="navbar.jsp"%>

    <div class="col-md-12 p-5">
        <div class="card paint-card ">
            <div class="card-body ">
                <p class="fs-3 fw-bold text-center text-success">Patient Details</p>
                <table class="table table-dark">
                    <thead>
                        <tr class="table-dark">
                            <th scope="col">Full Name</th>
                            <th scope="col">Gender</th>
                            <th scope="col">Age</th>
                            <th scope="col">Appointment</th>
                            <th scope="col">Email</th>
                            <th scope="col">Mob No</th>
                            <th scope="col">Diseases</th>
                            <th scope="col">Doctor Name</th>
                            <th scope="col">Address</th>
                            <th scope="col">Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                        // Retrieve the appointment list and doctors' details
                        AppointmentDao appointmentDao = new AppointmentDao(DBConnect.getConn());
                        DoctorDao doctorDao = new DoctorDao(DBConnect.getConn());
                        List<Appointment> appointmentList = appointmentDao.getAllAppointment();

                        // Iterate through the list of appointments
                        for (Appointment appointment : appointmentList) {
                            Doctor doctor = doctorDao.getDoctorById(appointment.getDoctorId());
                        %>
                        <tr>
                            <td><%= appointment.getFullName() %></td>
                            <td><%= appointment.getGender() %></td>
                            <td><%= appointment.getAge() %></td>
                            <td><%= appointment.getAppoinDate() %></td>
                            <td><%= appointment.getEmail() %></td>
                            <td><%= appointment.getPhNo() %></td>
                            <td><%= appointment.getDiseases() %></td>
                            <td><%= doctor.getFullName() %></td>
                            <td><%= appointment.getAddress() %></td>
                            <td><%= appointment.getStatus() %></td>
                        </tr>
                        <%
                        } // End of for loop
                        %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
