<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet"%>
<%@ page import="util.MySQLCon"%>

<%
String role = (String) session.getAttribute("role");

if (role == null || !role.equals("admin")) {
    response.sendRedirect("login.jsp?Error=Access denied");
    return;
}
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/styles.css">
</head>
<body>

	<div class="navbar" style="display: block;">
		<h1>Admin Dashboard</h1>
		<p>Welcome, Administrator.</p>
	</div>
	<h2>Management Options</h2>
	<ul>
		<li><a href="#">Create New Product Listing</a></li>
		<li><a href="#">Edit Product Information</a></li>
		<li><a href="#">Adjust Inventory Quantities</a></li>
		<li><a href="#">Restock Products</a></li>

	</ul>

	<br>


	<div class="section">
		<h2>User Management</h2>
		<ul>
			<li><a href="#">Monitor User Accounts</a></li>
			<li><a href="#">Suspend User Account</a></li>
			<li><a href="#">Reactivate User Account</a></li>
		</ul>
	</div>
	<!-- there were two of this user management div so i (samantha) deleted it -->
	<!-- samantha will do admin and admin servlet -->
	<div class="section">
		<h2>User Management</h2>
		<ul>
			<li><a href="#">Monitor User Accounts</a></li>
			<li><a href="#">Suspend User Account</a></li>
			<li><a href="#">Reactivate User Account</a></li>
		</ul>
	</div>

	<div id="new-prod" class="admin-functions-box">
		<h2 class="admin-functions-headers">Create New Listing</h2>
		<p>test</p>
	</div>

	<div id="edit-information"></div>

	<div id="adjust-quantity"></div>

	<div id="restock-products"></div>

</body>
</html>