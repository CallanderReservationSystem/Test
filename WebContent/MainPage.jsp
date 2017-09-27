<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
		<title>Home</title>
	</head>
	<body>
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="">
					<ul class="nav nav-pills">
						<li class="active"><a href="HomePage">Home</a></li>
						<li><a href="About">About</a></li>
						<li><a href="Signup">Sign up</a></li>
						<li><a href="Login">Login</a></li>
					</ul>
				</div>
			</nav>
			<div class="page-header">
				<h1>Please Login Below...</h1>
				<h2>If not registered, Please sign up first</h2>
			</div>
			
			<form action="Signin" method="post" class="form">
				user: <input type="text" name="user" value="${param.user}"/>
				<c:if test="${not empty error0}">
					<b style="color:RED;">${error0}</b>
				</c:if>
				<c:if test="${not empty error2}">
					<b style="color:RED;">${error2}</b>
				</c:if>
				<br>
				pass: <input type="password" name="pass" value="${param.pass}"/>
				<c:if test="${not empty error1}">
					<b style="color:RED;">${error1}</b>
				</c:if>
				<c:if test="${not empty error3}">
					<b style="color:RED;">${error3}</b>
				</c:if>
				<br>
				<input type="submit" name="go" value="Sign In"/>
			</form>
		</div>
	</body>
</html>