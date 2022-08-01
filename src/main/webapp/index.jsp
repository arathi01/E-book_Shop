<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ebook: Index</title>
<%@include file="all_component/allCss.jsp"%>

<!-- Background image in the home page -->

<style type="text/css">
.back-image {
	background: url("image/book6.jpg");
	height: 45vh;
	width: 100%;
	opacity: 1;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd-ho:hover {
	background-color: #e6e6e6;
}
</style>

</head>
<body style="background-color: #f7f7f7;">


	<%@include file="all_component/navbar.jsp"%>
	<div class="container-fluid back-image">
	
		<h2 class="text-center animate-charcter"><i class="fa fa-book"></i> E-Book Management System</h2>
 
	</div>
	
	
	<!-- start Recent Book -->
	
	<div class="container">
		<h4 class="text-center mt-1">Recent Book</h4>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/alice.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Alice in Wonderland(6 book series)</p>
						<p>Raven Gregory</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">10 <i class="fa-solid fa-euro-sign"></i></a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center ">
						<img alt="" src="book/cloudnative.jpg" 
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Cloud Native DevOps</p>
						<p>John Arundel& Justin Domingus</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">15 <i class="fa-solid fa-euro-sign"></i></a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Core Java Vol-1 Fundamentals,11th Edition</p>
						<p>Cay S. Horstmann</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">20 Euro</a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/linux.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Linux Pocket Guide, Essential Commands</p>
						<p>Daniel J.Barrett</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">18 Euro</a>


						</div>
					</div>
				</div>
			</div>
			
		</div>
		<div class="text-center mt-1">
		<a href=""class="btn btn-blue btn-sm mt-1">View All</a>
		</div>
	</div>
	<!-- End Recent book -->
	
<hr>	
	<!-- start New Book -->
	
	<div class="container">
		<h4 class="text-center">New Book</h4>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/alice.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Alice in Wonderland(6 book series)</p>
						<p>Raven Gregory</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">10 Euro</a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/cloudnative.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Cloud Native DevOps</p>
						<p>John Arundel& Justin Domingus</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">15 Euro</a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Core Java Vol-1 Fundamentals,11th Edition</p>
						<p>Cay S. Horstmann</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">20 Euro</a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/linux.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Linux Pocket Guide, Essential Commands</p>
						<p>Daniel J.Barrett</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">18 Euro</a>


						</div>
					</div>
				</div>
			</div>
			
		</div>
		<div class="text-center mt-1">
		<a href=""class="btn btn-blue btn-sm mt-1">View All</a>
		</div>
	</div>
	<!-- End New book -->
<hr>

<!-- start Old Book -->
	
	<div class="container">
		<h4 class="text-center">Old Book</h4>
		<div class="row">
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/alice.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Alice in Wonderland(6 book series)</p>
						<p>Raven Gregory</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">10 Euro</a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/cloudnative.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Cloud Native DevOps</p>
						<p>John Arundel& Justin Domingus</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">15 Euro</a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/java.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Core Java Vol-1 Fundamentals,11th Edition</p>
						<p>Cay S. Horstmann</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">20 Euro</a>


						</div>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card crd-ho">
					<div class="card-body text-center">
						<img alt="" src="book/linux.jpg"
							style="width: 150px; height: 200px" class="img-thumblin">
						<p>Linux Pocket Guide, Essential Commands</p>
						<p>Daniel J.Barrett</p>
						<p>Category: New</p>
						<div class="row text-center">
							<a href="" class="btn btn-white btn-sm ml-2"><i class="fa fa-shopping-cart"></i> Add Cart</a> <a
								href="" class="btn btn-white btn-sm ml-1">View Details</a> <a
								href="" class="btn btn-white btn-sm ml-1">18 Euro</a>


						</div>
					</div>
				</div>
			</div>
			
		</div>
		<div class="text-center mt-1">
		<a href=""class="btn btn-blue btn-sm mt-1">View All</a>
		</div>
	</div>
	<!-- End Old book -->
	
	<%@include file="all_component/footer.jsp"%>
</body>
</html>