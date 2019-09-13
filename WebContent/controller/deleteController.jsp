<%@page import="StudentCatalog.DeleteValue"%>
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

String ID=request.getParameter("ID");

DeleteValue obj_DeleteValue=new DeleteValue();
obj_DeleteValue.deleteValue(ID);

%>

<script type="text/javascript">
window.location.href="http://localhost:8080/Student_Catalog/catalog.jsp"
</script>


</body>
</html>