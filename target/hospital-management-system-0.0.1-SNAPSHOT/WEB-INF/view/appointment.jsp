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
<title>Add Appointment</title>
<%@ include file="./components/common_cs_js.jsp"%>
</head>
<body>
<%@ include file="./components/navbar.jsp"%>
<div class="container-fluid">
  <div class="row mt-2">
       <div class="col-md-4 offset-md-4 admin" >
            <div class="card">
                <%@ include file="./components/message.jsp"%>
                <div class="card-body px-5">
                    <h3 class="text-center my-3">Add Appointment</h3>
            <form action="getpatient">
            <div class="row">
                 <div class="form-group">
                     <label for="name">Patient Id</label>
                     <input type="number" class="form-control" id="firstname" aria-describedby="emailHelp" name="patientid" placeholder="Enter patient id.." required>
                 </div>
                 
                  <div class="container text-center">
                      <button class="btn custom-bg text-color"><b>Get Patient Details</b></button>
                 </div>
            </div>  
            <%
                Patient patient = (Patient) request.getAttribute("patient"); 
            %>
            </form>
            <form action="addappointment" method="post">
            <input type="hidden" name="patientid" value="<% if(patient != null) { %> <%=patient.getId() %> <% } %>">
            <div class="row">   
                 <div class="form-group">
                     <label for="email">Patient Name</label>
                     <input type="email" class="form-control" aria-describedby="emailHelp" value="<% if(patient != null) { %> <%=patient.getFirstname() %> <% } %>" placeholder="Enter email id.." readonly required>
                 </div>
                 <div class="form-group ml-4">
                     <label for="email">Patient Age</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" value="<% if(patient != null) { %> <%=patient.getAge() %> <% } %>" readonly required>
                 </div>
            </div>
            <div class="row">     
                 <div class="form-group">
                     <label for="email">Patient Blood Group</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp"  value="<% if(patient != null) { %> <%=patient.getBloodgroup() %> <% } %>"  readonly required>
                 </div>
                  <%
                    Date date = new Date();  
                    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");  
                    String strDate= formatter.format(date);  
                  %>
                 <div class="form-group ml-4">
                     <label for="email">Appointment Taking Date</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" name="appointmenttakendate" value="<%=strDate %>" readonly required>
                 </div>
                 
             </div>   
                 <%
             	     DateFormat dateFormat = new SimpleDateFormat("hh:mm aa");
             	     String dateString = dateFormat.format(new Date()).toString();
                 %>
            <div class="row">     
                  <div class="form-group">
                     <label for="name">Appointment Taking Time</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" name="appointmenttakentime" value="<%=dateString %>" readonly required>
                 </div>
                 <div class="form-group ml-4">
                  <label for="email">Doctor</label>
                   <select name="doctorid" class="form-control">
                       <option value="0">Select Doctor</option>
                      <%
                           DoctorResource doctorResource = (DoctorResource)request.getAttribute("doctorResource");
                		   List<Doctor> doctors = doctorResource.getAllDoctor();
                		   for(Doctor doctor : doctors)
                           {
                       %>
                             <option value="<%=doctor.getId()%>"><%=doctor.getFirstname()%>(<%=doctor.getSpecialist() %>)</option>
                       <%
                           }
                       %>
                   </select>
                 </div>  
             </div>  
            
              <div class="row">     
                  <div class="form-group">
                     <label for="email">Appointment Date</label>
                     <input type="text" class="form-control" aria-describedby="emailHelp" name="appointmentdate" required>
                 </div>
                  <div class="form-group ml-4">
                  <label for="email">Appointment Time</label>
                   <select name="appointmenttime" class="form-control">
                       <option value="0">Select Appointment Time</option>
                      <%
                           
                           for(DatabaseConstants.AppointmentTiming time : DatabaseConstants.AppointmentTiming.values())
                           {
                       %>
                             <option value="<%=time.value()%>"><%=time.value() %></option>
                       <%
                           }
                       %>
                   </select>
                 </div>  
             </div>  
             <div class="row">     
                 <div class="form-group">
                     <label for="password"></label>
                     <textarea class="form-control" id="exampleFormControlTextarea1" name="problemdescription" rows="3" placeholder="Enter description.." required></textarea>
                 </div>
             </div>
                <div class="container text-center">
                      <button class="btn custom-bg text-color"><b>Add Appointment</b></button>
                 </div>
                 
            </form>
                </div>
            </div>
           
       </div>
  </div>
</div>
</body>
</html>