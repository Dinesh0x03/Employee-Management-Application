<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>employee-list</title>
<style>
/* Table styling */
body{
	 font-family: 'Poppins', sans-serif;
	 display:flex;
	 flex-direction:column; 
	 justify-content: center;
     align-items: center;
     background-color: #2575fc ;
}

table {
	width: 50%;
	border-collapse: collapse;
	background: white;
	border-radius:10px;
	/* box-shadow: 0 10px 25px rgba(0,0,0,0.2); */
    /* animation: slideDown 0.6s ease; */
}

table, th, td {
	border: 1px solid black;
}

th, td {
	padding: 8px;
	text-align: left;
}
/* Header styling */
th {
	background-color: #f2f2f2;
}
/* Styling for the action buttons */
a {
	margin-right: 10px;
	text-decoration: none;
	color: #007bff;
}

a:hover {
	color: #0056b3;
}
/* Styling for the Add New Employee link */
.add-link {
	display: inline-block;
	margin-top: 20px;
	padding: 10px 20px;
	background-color: #28a745;
	color: white;
	text-decoration: none;
	border-radius: 5px;
}

.add-link:hover {
	background-color: #218838;
}

h1 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
        font-size: 35px;
    }
</style>
</head>
<body>
	<h1>Employee List</h1>
	<table>
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Salary</th>
			<th>Designation</th>
			<th>Actions</th>
		</tr>
		<c:forEach items="${employees}" var="employee">
		<tr>
			<td>${employee.id }</td>
			<td>${employee.name }</td>
			<td>${employee.salary }</td>
			<td>${employee.designation }</td>
			<td>
				<a href="/editEmployeeForm?id=${employee.id }">Edit</a>
				<a href="/deleteEmployee?id=${employee.id }">Delete</a>
			</td>
		</tr>
		</c:forEach>
	</table>
	<a href="/addEmployeeForm" class="add-link">Add New Employee</a>
</body>
</html>