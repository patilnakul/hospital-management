<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="component/allcss.jsp"%>

</head>
<body class="home">
	<%@include file="component/navbar.jsp"%>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner carousel">
			<div class="carousel-item active">
				<img src="image/img_1.jpg" class="d-block w-100" alt="..."
					height="500px" width="100%">
			</div>
			<div class="carousel-item">
				<img src="image/img_2.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="image/img_3.jpg" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>

	<div class="container p-2 ">
		<p class="text-center fs-3 p-3 ">
			<span class="text-animation"> Key Features Of Our Hospital <span
				class="highlight"></span> <span class="animated-word"> </span></span>
		</p>
		<div class="row">
			<div class="col-md-8 p-3">
				<div class="row">
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">
									<span class="text-animation"> 100% Safety <span
										class="highlight"></span> <span class="animated-word">
									</span></span>
								</p>
								<p>Ensuring 100% safety in a hospital setting is an
									ambitious goal but practically unattainable due to various
									factors such as human error, unforeseen emergencies, and the
									inherent risks associated with medical procedures.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">
									<span class="text-animation"> Clean Environment <span
										class="highlight"></span> <span class="animated-word">
									</span></span>
								</p>
								<p>Maintaining a clean environment in medical settings is
									crucial for preventing the spread of infections and ensuring
									the safety of patients, staff, and visitors. Proceed from
									cleaner to dirtier areas to avoid spreading dirt.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">
									<span class="text-animation"> Doctors Friendly <span
										class="highlight"></span> <span class="animated-word">
									</span></span>
								</p>
								<p>A friendly doctor is not just someone who is approachable
									and pleasant to interact with, but also someone who embodies
									empathy, compassion, and effective communication skills.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">
									<span class="text-animation"> Advanced Technology <span
										class="highlight"></span> <span class="animated-word">
									</span></span>
								</p>
								<p>Advanced hospital technologies like AI diagnostics and
									robotic surgery systems optimize patient care and streamline
									operations, while electronic health records enhance data
									management and care coordination.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<img class="d-block w-100" src="image/home.png" alt=""
					height="495px">
			</div>
		</div>
	</div>


	<div class="container p-3">

		<p class="text-center fs-3 p-3 ">
			<span class="text-animation"> Our Team <span class="highlight"></span>
				<span class="animated-word"> </span>
			</span>
		</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img class="card-img-top" src="image/vaishali.jpg" width="250px"
							height="300px">
						<p class="fw-bold fs-5">Dr. Vaishali Sharma</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>


			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img class="card-img-top" src="image/umesh.jpg" width="250px"
							height="300px">
						<p class="fw-bold fs-5">Dr. Umesh Nagare</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img class="card-img-top" src="image/vanita.png" width="250px"
							height="300px">
						<p class="fw-bold fs-5">Dr. Vanita Arora</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img class="card-img-top" src="image/pramod.jpg" width="250px"
							height="300px">
						<p class="fw-bold fs-5">Dr. Pramod Tripathi</p>
						<p class="fs-7">(Chief Doctor)</p>
					</div>
				</div>
			</div>
		</div>
	</div>
		<%@include file="component/css.jsp"%>
		<%@include file="component/footer.jsp"%>
	
</body>

</html>

