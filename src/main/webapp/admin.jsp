<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/styles.css">
</head>
<body>

    <div class="container">
        <h1>Admin Dashboard</h1>
        <p>Welcome, Administrator.</p>
        <hr>

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
    
    
    <div class="section">
        <h2>User Management</h2>
        <ul>
            <li><a href="#">Monitor User Accounts</a></li>
            <li><a href="#">Suspend User Account</a></li>
            <li><a href="#">Reactivate User Account</a></li>
        </ul>
    </div>