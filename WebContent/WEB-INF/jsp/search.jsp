<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Site specific styles -->
<link rel="stylesheet" href="css/styles.css">
<title>MyCause.io | Search</title>
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
	            <li><a href="postcause.html">Post My Cause</a></li>
				<li class="active"><a href="search.html">Search</a></li>
				<li><a href="browse.html">Browse</a></li>
	            <li id="signup"><a href="signup.html">Sign Up</a></li>
	            <li id="login"><a href="login.html">Login</a></li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </nav>
	
	
	<!-- Search Form -->
	<main>
		<div class="container">
			<h2 class="page-header">Search for a cause:</h2>
		</div>
		<form action="processSearch" method="post" class="form-horizantal">
			<div class="container">
				<div class="row">
					<div class="col-sm-offset-3 col-sm-4">
						<div class="form-group">
					    	<input type="text" name="searchTerm" class="form-control" id="searchInput" placeholder="pizza, park, food, etc..." required/>
						</div>
					</div>
				<div class="col-sm-offset1 col-sm-1">
					<div class="form-group">
				    	<button type="submit" value="submit" class="btn btn-default">Search</button>
					</div>
					</div>
				</div>
			</div>
		</form>
		
<!-- 		<div class="post-preview"> -->
<!-- 			<!-- Post preview image --> 
<!-- 			<img src="#"/> -->
<!-- 			<!-- Post description --> 
<!-- 			<p></p> -->
<!-- 			<!-- Link to cause page --> 
<!-- 			<a href="">View this cause</a> -->
<!-- 		</div> -->

<!-- Returned Results -->
		<div class="container">
				<c:forEach var="myvar" items="${selectedPosts}">
				<div class="row">
					<div class="post-preview">
							<!-- Post preview image -->
							<img src="${myvar.getImageLink()}" />
							<!-- Post title -->
							<h2>${myvar.getTitle()}</h2>
							<!-- Post description -->
							<p>${myvar.getDescription()}</p>
							<p>Upvotes: ${myvar.getPostUpvotes() }</p>
							<form action="cause.html">
								<input type="hidden" name="postId" value="${myvar.getPostId()}" />
								<input type="hidden" name="catId" value="${myvar.getCatId()}" />
								<input type="submit" value="visit" name="visit" />
							</form>
					</div>
				</div>
			</c:forEach> 
			</div>



	</main>
	
	<footer class="footer">
		<div class="container">
			<p>&copy; All rights reserved by Jeseekia Vaughn, Caroline Jobe, and Aaron Ribant.</p>
		</div>
	</footer>
	
	<!-- JQuery -->
	<script src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
	<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
	
	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
	
	<!-- Cookie JS lib scripts -->
	<script src="scripts/js.cookie.js"></script>
	<!-- Site scripts -->
	<script src="scripts/scripts.js"></script>
</body>
</html>