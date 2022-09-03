<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EBook: Register</title>
<%@include file="all_component/allCss.jsp"%>

</head>

<!-- Registration form page -->
<body style="background-color: #f0f1f2;">

	<%@include file="all_component/navbar.jsp"%>

	<h8>****Your data will be highly
	confidential****</h8>

	<div class="Container p-2">
		<div class="row mt-4">
			<div class="col-md-4 offset-md-4 ">
				<div class="card">
					<div class="card-body">
						<h5 class="text-center">Create a new account</h5>
						<p class="text-center">
							<i>Let's go...</i>
						</p>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						
						<c:if test="${not empty failedMsg }">
							<p class="text-center text-danger">${failedMsg }</p>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						
						<form action="register" method="post">

							<div class="form-group">
								<label for="exampleInputName">Enter Full Name</label> <input
									type="text" class="form-control" id="exampleInputName"
									aria-describedby="nameHelp" placeholder="Enter Your Name"
									required="required" name="fname">

							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email Address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="required" name="email">

							</div>
							<div class="form-group">
								<label for="exampleInputPhonenumber">Phone Number</label> <input
									type="number" class="form-control" id="exampleInputPhonenumber"
									aria-describedby="phonenumberHelp"
									placeholder="Enter Phone Number" required="required"
									name="phoneno">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Your Password" required="required" name="password">
							</div>
							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1"> Agree Terms & Conditions</label>
							</div>
							<div class="text-center">
								<button type="submit" style="height: 40px; width: 250px"
									class="btn btn-primary">Submit</button>
							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>