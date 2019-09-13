<%@page import="StudentCatalog.InsertValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

String ID=request.getParameter("ID");
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String Email=request.getParameter("Email");
String Mobile=request.getParameter("Mobile");
String Courses=request.getParameter("Courses");
String GPA=request.getParameter("GPA");

InsertValues obj_InsertValues=new InsertValues();
obj_InsertValues.insertValues(ID, firstName, lastName, Email, Mobile, Courses, GPA);

%>

<script type="text/javascript">
window.location.href="http://localhost:8080/Student_Catalog/insertValue.jsp"
</script>

</body>
</html>