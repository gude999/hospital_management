<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import ="com.hospitalmanagement.model.*"%>
<%@ page import ="com.hospitalmanagement.dao.*"%>
<%@ page import ="com.hospitalmanagement.resource.*"%>
<%@ page import ="com.hospitalmanagement.constants.*"%>
<%@ page import ="java.sql.*"%>
<%@ page import ="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Appointment</title>
<%@ include file="./components/common_cs_js.jsp"%>
</head>
<body>
<%@ include file="./components/navbar.jsp"%>
<div class="container-fluid">
  <div class="row mt-4">
       <form class="form-inline ml-5" action="searchappointmentbyid">
          <div class="form-group">
            <label for="inputPassword2" class="text-color"><h4>Search Appointment By Id</h4></label>
            <input type="number" class="form-control ml-3" id="inputPassword2" name="appointmentid" placeholder="Enter Appointment Id..">
          </div>
          <button type="submit" class="btn text-color custom-bg ml-2">Search</button>
       </form>
       <form class="form-inline mt-1" action="searchappointmentbypatientname">
          <div class="form-group">
            <label for="inputPassword2" class="text-color ml-5"><h4>Search Appointment By Patient name</h4></label>
            <input type="text" class="form-control ml-3" id="inputPassword2" name="patientname" placeholder="Enter Patient name..">
          </div>
          <button type="submit" class="btn text-color custom-bg ml-2">Search</button>
       </form>
  </div>
  <div class="table-responsive">
          <table class="table">
  <thead class="custom-bg text-color">
    <tr>
      <th scope="col">Appointment No.</th>
      <th scope="col">Patient Name</th> 
      <th scope="col">Patient Age</th>    
      <th scope="col">Patient Blood Group</th>
      <th scope="col">Patient Contact</th>
      <th scope="col">Appointed Doctor</th>
      <th scope="col">Appointment Taken Date</th>
      <th scope="col">Appointment Date</th>
      <th scope="col">Appointment Time</th>
      <th scope="col">Treatment Status</th> 
    </tr>
  </thead>
  
   <%
      List<Appointment> listOfAppointments = (List<Appointment>)request.getAttribute("appointments");
      Appointment appointment =(Appointment)request.getAttribute("appointment");
      PatientResource patientResource = (PatientResource)request.getAttribute("patientResource");
      DoctorResource doctorResource = (DoctorResource)request.getAttribute("doctorResource");
 
      if(listOfAppointments == null && appointment != null) {
      Patient patient = patientResource.getPatientById(appointment.getPatientid());
      Doctor doctor = doctorResource.getDoctorById(appointment.getDoctorid());
        
    %> 
  <tbody>
    <tr class="text-center">
      <td class="mid-align"><%=appointment.getId()%></td>
      <td class="mid-align"><%=patient.getFirstname() %></td>
      <td class="mid-align"><%=patient.getAge() %></td>
      <td class="mid-align"><%=patient.getBloodgroup() %></td>
      <td class="mid-align"><%=patient.getMobileno() %></td>
      <td class="mid-align"><%=doctor.getFirstname()+" " %>(<%= doctor.getSpecialist() %>)</td>
      <td class="mid-align"><%=appointment.getAppointmenttakendate()+" " %><%=appointment.getAppointmenttakentime() %></td>
      <td class="mid-align"><%=appointment.getAppointmentdate() %></td>
      <td class="mid-align"><%=appointment.getAppointmenttime() %></td>
      <td class="mid-align"><%=appointment.getTreatmentstatus() %></td>
    </tr>
  </tbody>
    <%
      }
      if(listOfAppointments != null && appointment == null) {
          for(Appointment a : listOfAppointments) {
        	  Patient patient = patientResource.getPatientById(a.getPatientid());
              Doctor doctor = doctorResource.getDoctorById(a.getDoctorid());
    %>
  <tbody>
    <tr class="text-center">
      <td class="mid-align"><%=a.getId()%></td>
      <td class="mid-align"><%=patient.getFirstname() %></td>
      <td class="mid-align"><%=patient.getAge() %></td>
      <td class="mid-align"><%=patient.getBloodgroup() %></td>
      <td class="mid-align"><%=patient.getMobileno() %></td>
      <td class="mid-align"><%=doctor.getFirstname()+" " %>(<%= doctor.getSpecialist() %>)</td>
      <td class="mid-align"><%=a.getAppointmenttakendate()+" " %><%=a.getAppointmenttakentime() %></td>
      <td class="mid-align"><%=a.getAppointmentdate() %></td>
      <td class="mid-align"><%=a.getAppointmenttime() %></td>
      <td class="mid-align"><%=a.getTreatmentstatus()%></td>
    </tr>
  </tbody>
    <%
          }
      }
    %>
</table>
   </div>
</div>

</body>
</html>