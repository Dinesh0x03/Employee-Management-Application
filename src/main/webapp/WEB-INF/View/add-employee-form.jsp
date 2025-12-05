<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add New Employee</title>

<style>

    body {
        margin: 0;
        padding: 0;
        font-family: "Segoe UI", Arial, sans-serif;
         background-color: #2575fc ;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background: #ffffff;
        padding: 35px;
        width: 450px;
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        animation: slideDown 0.6s ease;
    }

    @keyframes slideDown {
        from { transform: translateY(-40px); opacity: 0; }
        to   { transform: translateY(0); opacity: 1; }
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 25px;
        font-size: 26px;
    }

    label {
        font-size: 15px;
        font-weight: bold;
        color: #444;
    }

    input[type="text"] {
        width: 100%;
        padding: 12px;
        margin-top: 5px;
        margin-bottom: 20px;
        border: 2px solid #ddd;
        border-radius: 8px;
        font-size: 15px;
        transition: 0.3s;
    }

    input[type="text"]:focus {
        border-color: #6a11cb;
        outline: none;
        box-shadow: 0 0 8px rgba(106,17,203,0.3);
    }

    .btn {
        width: 100%;
        padding: 12px;
        border: none;
        border-radius: 8px;
        background: #6a11cb;
        background: linear-gradient(135deg, #6a11cb, #2575fc);
        color: white;
        font-size: 17px;
        cursor: pointer;
        transition: 0.3s;
        font-weight: bold;
    }

    .btn:hover {
        transform: scale(1.05);
        box-shadow: 0 5px 15px rgba(0,0,0,0.3);
    }

</style>

</head>

<body>

<div class="container">
    <h1>Add New Employee</h1>

    <form action="/addEmployee" method="post">

        <label>Name:</label>
        <input type="text" name="name" placeholder="Enter employee name">

        <label>Salary:</label>
        <input type="text" name="salary" placeholder="Enter salary">

        <label>Designation:</label>
        <input type="text" name="designation" placeholder="Enter designation">

        <input type="submit" value="Add Employee" class="btn">
    </form>
</div>

</body>
</html>