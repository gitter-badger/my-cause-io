<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="javax.naming.Context,javax.naming.InitialContext"%>
<%@ page import="javax.annotation.Resource"%>
<%@page import="javax.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">

<!-- Site specific styles -->
<link rel="stylesheet" href="css/styles.css">

 <link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<title>Post For Help</title>
</head>
<body>
	<!-- Site Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="index.html">MyCause.io</a>
	        </div>
	        <div id="navbar" class="collapse navbar-collapse">
	          <ul class="nav navbar-nav">
	            <li><a href="index.html">Home</a></li>
	            <li class="active"><a href="postcause.html">Post My Cause</a></li>
	            <li><a href="login">Login</a></li>
	            <li><a href="signup.html">Sign Up</a></li>
				<li><a href="logout.html">Logout</a></li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </nav>
	<a href="imageofRecipient.jpg"></a>
	<p>Please describe what kind of assistance you are in need of.</p>



	<form action="postSuccess.html" method="POST">
		<%-- 		<select name="category"><c:forEach var="row" --%>
		<%-- 				items="${result.rows}"> --%>
		<%-- 				<option value='<c:out value="${row.name}"/>'> --%>
		<%-- 					<c:out value="${row.name}" /> --%>
		<!-- 				</option> -->
		<%-- 			</c:forEach> --%>
		<!-- 		</select> -->

	Select a category:<select name="category">
			<option value="1">money</option>
			<option value="2">time</option>
			<option value="3">food</option>
			<option value="4">material</option>
		</select><br>
		
	Enter a headline:<input type="text" name="postheadline" maxlength="59" required></input><br>
	Enter a description:<input type="text" name="post_desc" maxlength="249" required></input><br>
		<button type="submit" form="form1" value="Submit">Submit</button>
	</form>

	<footer>
		<p>&copy; All rights reserved by Jeseekia Vaughn, Caroline Jobe,
			Aaron Ribant, and Mark Day</p>
	</footer>

	<!-- JQuery -->
	<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>

	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>


	<!-- Sweet Alert -->
	<script src="scripts/sweetalert.min.js"></script>
	<!-- Site scripts -->
	<script src="scripts/scripts.js"></script>
	
</body>
</html>