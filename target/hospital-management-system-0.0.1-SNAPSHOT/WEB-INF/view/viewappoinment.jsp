<%@page import="com.hospitalmanagement.service.DoctorServiceImp"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page import ="com.hospitalmanagement.model.*"%>
<%@ page import ="com.hospitalmanagement.dao.*"%>
<%@ page import ="com.hospitalmanagement.resource.*"%>
<%@ page import ="com.hospitalmanagement.constants.*"%>
<%@ page import ="java.sql.*"%>
<%@ page import ="java.util.Date"%>
<%@ page import ="java.util.*"%>
<%@ page import ="java.text.SimpleDateFormat"%>
<%@ page import ="java.text.DateFormat"%>
<%@ page import ="java.time.LocalDate"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Appointment</title>
<%@ include file="./components/common_cs_js.jsp"%>
</head>
<body>
<%@ include file="./components/navbar.jsp"%>
<%
     DoctorResource dResource = (DoctorResource)request.getAttribute("doctorResource");
     PatientResource pResource = (PatientResource)request.getAttribute("patientResource");
     Appointment appointment = (Appointment)request.getAttribute("appointment");
     Patient patient = pResource.getPatientById(appointment.getPatientid());
%>
<div class="container-fluid">
  <div class="row mt-2">
       <div class="col-md-4 offset-md-4 admin" >
            <div class="card">
                <%@ include file="./components/message.jsp"%>
                <div class="card-body px-5">
                    <h3 class="text-center my-3">View Appointment</h3>
            <form action="updateappointment">
            
            <div class="row">   
                 <div class="form-group">
                     <label for="email">Patient First Name</label>
                     <input type="email" class="form-control" aria-describedby="emailHelp" value="<%= patient.getFirstname() %>" readonly required>
                 </div>
                 
                 <div class="form-group">
                     <label for="email">Patient Last Name</label>
                     <input type="email" class="form-control" aria-describedby="emailHelp" value="<%= patient.getLastname() %>" readonly required>
                 </div>
                 
            </div>
            <div class="row">     
                 <div class="form-group">
                     <label for="email">Patient Blood Group</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp"  value="<%=patient.getBloodgroup()%>"  readonly required>
                 </div>
                 
                 <div class="form-group ml-4">
                     <label for="email">Patient Age</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%= patient.getAge()%>" readonly required>
                 </div> 
             </div>   
            
              <div class="row">     
                  <div class="form-group">
                     <label for="email">Appointment Date</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%=appointment.getAppointmentdate() %>" required>
                 </div>
                  <div class="form-group">
                     <label for="email">Appointment Time</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<%=appointment.getAppointmenttime() %>" required>
                 </div>
             </div>  
             
             <div class="form-group">
                 <label for="password"></label>
                 <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" value="<%=appointment.getProblemdescription() %>" required></textarea>
             </div>
             
             <div class="container text-center">
                 <button class="btn custom-bg text-color"><b>Update Appointment</b></button>
             </div>
                 
            </form>
                </div>
            </div>
           
       </div>
  </div>
</div>
</body>
</html>