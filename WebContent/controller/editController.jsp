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

String ID=request.getParameter("ID");
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String Email=request.getParameter("Email");
String Mobile=request.getParameter("Mobile");
String Courses=request.getParameter("Courses");
String GPA=request.getParameter("GPA");

StudentBean obj_StudentBean=new StudentBean();
obj_StudentBean.setID(ID);
obj_StudentBean.setFirstName(firstName);
obj_StudentBean.setLastName(lastName);
obj_StudentBean.setEmail(Email);
obj_StudentBean.setMobile(Mobile);
obj_StudentBean.setCourses(Courses);
obj_StudentBean.setGPA(GPA);

EditValues obj_EditValues=new EditValues();
obj_EditValues.updateValues(obj_StudentBean);

%>

<script type="text/javascript">
window.location.href="http://localhost:8080/Student_Catalog/catalog.jsp"
</script>

</body>
</html>