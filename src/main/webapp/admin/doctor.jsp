<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.List" %>
<%@page import="com.dao.SpecialistDao"%>
<%@page import="com.entity.Specalist"%>
<%@page import="com.dao.DoctorDao" %>
<%@page import="com.entity.Doctor" %>


<%@page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Add</title>
<%@ include file="../component/allcss.jsp" %>

</head>
<body>
  <%@ include file="navbar.jsp" %>
    <c:if test="${ empty adminObj}">
          <c:redirect url="../Admin_login.jsp"> </c:redirect>
      </c:if>
<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="card paint-card">
                <div class="card-body">
                    <p class="fs-4 fw-bold text-center text-success">Add Doctor</p>
                    <c:if test="${not empty errorMsg}">
                        <p class="fs-6 text-center text-danger">${errorMsg}</p>
                        <c:remove var="errorMsg" scope="session"/>
                    </c:if>
                    <c:if test="${not empty succMsg}">
                        <div class="fs-6 text-center text-success" role="alert">${succMsg}</div>
                        <c:remove var="succMsg" scope="session"/>
                    </c:if>
                    <form action="../addDoctor" method="post">
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" required name="fullname" class="form-control" autocomplete="off">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">DOB</label>
                            <input type="date" required name="dob" class="form-control"autocomplete="off">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Qualification</label>
                            <input required name="qualification" type="text" class="form-control" autocomplete="off">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Specialist</label>
                            <select name="spec" required class="form-control" >
                            <option>--select--</option>                       
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
                            <label class="form-label">Email</label>
                            <input type="text" required name="email" class="form-control" autocomplete="off">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Mob No</label>
                            <input type="text" required name="mobno" class="form-control" autocomplete="off">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input required name="password" type="password" class="form-control" autocomplete="off">
                        </div>
                         <div class="text-center">
                            <button type="submit" class="btn bg-success text-white text-center text-white mt-4 p-2 "
                            style="width: 50%; margin: auto;">Submit</button> 
                        </div>                     
                     </form>
                </div>
            </div>
        </div>
      </div>
  </div>
</body>
</html>
