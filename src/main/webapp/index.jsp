<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file="component/allCss.jsp"%>

</head>
<body>

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
		
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/pexels-anna-shvets-4483323.jpg" class="d-block w-100"
					alt="..." height="800px">
			</div>
			<div class="carousel-item">
				<img src="img/pexels-anna-shvets-4483323.jpg" class="d-block w-100"
					alt="..." height="800px">
			</div>
			<div class="carousel-item">
				<img src="img/pexels-anna-shvets-4483323.jpg"
					class="d-block w-100" alt="..." height="800px">
			</div>

			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- <div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img src="img/expenses.jpg" class="d-block w-100" alt="..." height="800px">
				</div>
				<div class="carousel-item">
					<img src="img/expenses.jpg" class="d-block w-100" alt="..." height="800px">
				</div>
				<div class="carousel-item">
					<img src="img/expenses.jpg" class="d-block w-100" alt="..." height="800px">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div> -->
		<div style="margin-top: 130px">
		<%@include file="component/footer.jsp"%>
	</div>
</body>
</html>