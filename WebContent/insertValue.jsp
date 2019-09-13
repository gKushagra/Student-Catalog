<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<center>

<h1>Add Student Details</h1>

<form action="controller/insertController.jsp">

ID:<input type="text" name="ID"><br>
firstName:<input type="text" name="firstName"><br>
lastName:<input type="text" name="lastName"><br>
Email:<input type="text" name="Email"><br>
Mobile:<input type="text" name="Mobile"><br>
Courses:<input type="text" name="Courses"><br>
GPA:<input type="text" name="GPA"><br>

<input type="submit" value="Add">

</form>

<button onclick="window.location.href = 'http://localhost:8080/Student_Catalog/catalog.jsp';">Catalog</button>

</center>


</body>
</html>