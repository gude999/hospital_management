<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@ include file="./components/common_cs_js.jsp"%>
</head>
<body>
	<%@ include file="./components/navbar.jsp"%>
	<div id="carouselExampleControls" class="carousel slide"
		data-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="resources/images/car2.jpg"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="resources/images/car1.jpg"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="resources/images/car3.jpg"
					alt="Third slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleControls"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleControls"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<div class="text-center">
		<h2 class="text-color">Start thinking wellness not illness</h2>
	</div>
	
	<div class="row">
    <div class="col-sm-3">
        <div class="card">
            <div class="card-header">
                ADMINISTRATOR LOGIN
            </div>
            <img class="card-img-top" src="https://source.unsplash.com/daily" alt="Card image top">
            <div class="card-body">
                <h3><a href="/hospital-management-system/adminlogin" class="card-title"> Admin Login</a></h3>
                <h4 class="card-subtitle">Card subtitle</h4>
                <p class="card-text">Admin is allowed to track every single info of app</p>
            </div>
            <div class="card-footer">
                    This is a footer
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <div class="card">
            <div class="card-header">
                DOCTOR LOGIN
            </div>
            <img class="card-img-top" src="https://source.unsplash.com/daily" alt="Card image top">
            <div class="card-body">
                <h3><a href="/hospital-management-system/doctorlogin" class="card-title">Doctor Login</a></h3>
                <h4 class="card-subtitle">Card subtitle</h4>
                <p class="card-text">Doctors are allowed to see their patients details</p>
            </div>
            <div class="card-footer">
                    This is a footer
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <div class="card">
            <div class="card-header">
                PHARMACIST LOGIN
            </div>
            <img class="card-img-top" src="https://source.unsplash.com/daily" alt="Card image top">
            <div class="card-body">
                <h3><a href="/hospital-management-system/pharmacistlogin" class="card-title">Pharmacist Login</a></h3>
                <h4 class="card-subtitle">Card subtitle</h4>
                <p class="card-text">Pharmacist will manage medicines</p>
            </div>
            <div class="card-footer">
                    This is a footer
            </div>
        </div>
    </div>
    <div class="col-sm-3">
        <div class="card">
            <div class="card-header">
                RECEPTIONIST LOGIN
            </div>
            <img class="card-img-top" src="https://source.unsplash.com/daily" alt="Card image top">
            <div class="card-body">
                <h3><a href="/hospital-management-system/receptionistlogin" class="card-title">Receptionist Login</a></h3>
                <h4 class="card-subtitle">Card subtitle</h4>
                <p class="card-text">Receptionist will manage patients at entry and exit point</p>
            </div>
            <div class="card-footer">
                    This is a footer
            </div>
        </div>
    </div>
</div>  
</body>
</html>