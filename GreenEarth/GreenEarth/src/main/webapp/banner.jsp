<%@ page contentType="text/html; charset=utf-8"%>
<body>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script> 
<script> 
 	$('.carousel').carousel({ interval: 2000 //기본 5초 }) </script>
<style> .carousel-inner > .carousel-item > img{ width: 640px; height: 720px;  } </style>

</head>
<body>
<div class="container"></div>
	<div id="demo" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<!-- 슬라이드 쇼 -->
			<div class="carousel-item active">
				<!--가로-->
				<img class="d-block w-100"
					src="https://images.pexels.com/photos/9160625/pexels-photo-9160625.jpeg?cs=srgb&dl=pexels-darina-belonogova-9160625.jpg&fm=jpg?auto=compress&cs=tinysrgb&h=650&w=940"
					alt="First slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>GreenEarth LifeStyle</h1>
					<p>Zero Waste Challenge</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="https://images.pexels.com/photos/7262998/pexels-photo-7262998.jpeg?cs=srgb&dl=pexels-sarah-chai-7262998.jpg&fm=jpg?auto=compress&cs=tinysrgb&h=650&w=940"
					alt="Second slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>GreenEarth Shop</h1>
					<p>eco-friendly goods and collection of resources</p>
				</div>
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					src="https://images.pexels.com/photos/159397/solar-panel-array-power-sun-electricity-159397.jpeg?cs=srgb&dl=pexels-pixabay-159397.jpg&fm=jpg?auto=compress&cs=tinysrgb&h=650&w=940"
					alt="Third slide">
				<div class="carousel-caption d-none d-md-block">
					<h1>Environmentally friendly companies</h1>
					<p>Eco-friendly certification and activities</p>
				</div>
			</div>
			<!-- / 슬라이드 쇼 끝 -->
			<!-- 왼쪽 오른쪽 화살표 버튼 -->
			<a class="carousel-control-prev" href="#demo" data-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<!-- <span>Previous</span> -->
			</a> 
			<a class="carousel-control-next" href="#demo" data-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<!-- <span>Next</span> -->
			</a>
			<!-- / 화살표 버튼 끝 -->
			<!-- 인디케이터 -->
			<ul class="carousel-indicators">
				<li data-target="#demo" data-slide-to="0" class="active"></li>
				<!--0번부터시작-->
				<li data-target="#demo" data-slide-to="1"></li>
				<li data-target="#demo" data-slide-to="2"></li>
			</ul>
			<!-- 인디케이터 끝 -->
	</div>
</body>