<%@page import="StudentCatalog.EditValues"%>
<%@page import="common.StudentBean"%>

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

	String ID=(String)request.getParameter("ID");
	EditValues obj_EditValues=new EditValues();
	StudentBean obj_StudentBean=obj_EditValues.editValues(ID);

%>



<center>

<h1>Edit Student Details</h1>

<form action="controller/editController.jsp">

ID:<input type="text" name="ID" value="<%=ID%>"><br>
firstName:<input type="text" name="firstName" value="<%=obj_StudentBean.getFirstName()%>"><br>
lastName:<input type="text" name="lastName" value="<%=obj_StudentBean.getLastName()%>"><br>
Email:<input type="text" name="Email" value="<%=obj_StudentBean.getEmail()%>"><br>
Mobile:<input type="text" name="Mobile" value="<%=obj_StudentBean.getMobile()%>"><br>
Courses:<input type="text" name="Courses" value="<%=obj_StudentBean.getCourses()%>"><br>
GPA:<input type="text" name="GPA" value="<%=obj_StudentBean.getGPA()%>"><br>

<input type="submit" value="Save">

</form>

</center>



</body>
</html>