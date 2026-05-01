<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page
	import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet"%>
<%@ page import="util.MySQLCon"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wishlist</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/styles.css">
</head>
<body>
	<header class="navbar">
		<h1 class="logo">Spartan Exchange</h1>

		<nav class="nav-links">
			<a href="<%=request.getContextPath()%>/index.jsp">Home</a> <a
				href="<%=request.getContextPath()%>/login.jsp">Account</a> <a
				href="#">Help</a> <a href="<%=request.getContextPath()%>/cart.jsp">Cart</a>
		</nav>
	</header>

	<%
	Integer userId = (Integer) session.getAttribute("user_id");

	if (userId == null) {
		response.sendRedirect("login.jsp?Error=Please login first");
		return;
	}

	Connection con = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	%>
	<!-- just taken from the cart.jsp to verify that user is logged in -->

	<h2>Wishlist</h2>
	<%
        try {
            con = MySQLCon.getConnection();
        String sql = "SELECT ";
            
   	%>

</body>
</html>