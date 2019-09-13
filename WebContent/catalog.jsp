<%@page import="StudentCatalog.ReadValues"%>
<%@page import="common.StudentBean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
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

ReadValues obj_ReadValues=new ReadValues();

List<StudentBean> list=obj_ReadValues.readValues();

Iterator<StudentBean> it=list.iterator();

%>

<table border="1" align="center" >

<% 

while(it.hasNext()){
	StudentBean obj_StudentBean=new StudentBean();
	obj_StudentBean=it.next();
%>	
	<tr>
	<td><%=obj_StudentBean.getID()%></td>
	<td><%=obj_StudentBean.getFirstName()%></td>
	<td><%=obj_StudentBean.getLastName()%></td>
	<td><%=obj_StudentBean.getEmail()%></td>
	<td><%=obj_StudentBean.getMobile()%></td>
	<td><%=obj_StudentBean.getCourses()%></td>
	<td><%=obj_StudentBean.getGPA()%></td>
	<td>
		<a href="edit.jsp?ID=<%=obj_StudentBean.getID()%>">Modify</a>
	</td>
	<td>
		<a href="controller/deleteController.jsp?ID=<%=obj_StudentBean.getID()%>">Remove</a>
	</td>
	
	
	</tr>
	
	
<% 	

}

%>

</table>

<button onclick="window.location.href = 'http://localhost:8080/Student_Catalog/insertValue.jsp';" style="margin-left: 47.5%">Return</button>


</body>
</html>