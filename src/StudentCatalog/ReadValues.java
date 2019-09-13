package StudentCatalog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.DB_Connection;
import common.StudentBean;

public class ReadValues {

	public static void main(String[] args) {
		ReadValues obj_ReadValues=new ReadValues();
		obj_ReadValues.readValues();
	}
	
	public List<StudentBean> readValues() {
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_Connection();
	
	PreparedStatement ps=null;
	ResultSet rs=null;
	
	List<StudentBean> list=new ArrayList<StudentBean>();
	
	try {
	String query="Select * from students";  //prepared statement
	ps=connection.prepareStatement(query);
	rs=ps.executeQuery();
	
	
	while(rs.next()) {
		
		StudentBean obj_StudentBean=new StudentBean();
		System.out.println(rs.getString("ID"));
		System.out.println(rs.getString("firstName"));
		System.out.println(rs.getString("lastName"));
		System.out.println(rs.getString("Email"));
		System.out.println(rs.getString("Mobile"));
		System.out.println(rs.getString("Courses"));
		System.out.println(rs.getString("GPA"));
		
		obj_StudentBean.setID(rs.getString("ID"));
		obj_StudentBean.setFirstName(rs.getString("firstName"));
		obj_StudentBean.setLastName(rs.getString("lastName"));
		obj_StudentBean.setEmail(rs.getString("Email"));
		obj_StudentBean.setMobile(rs.getString("Mobile"));
		obj_StudentBean.setCourses(rs.getString("Courses"));
		obj_StudentBean.setGPA(rs.getString("GPA"));
		
		
		
		list.add(obj_StudentBean);

	}
	
	
	
	} catch (Exception e) {
		System.out.println(e);
	}
	return list;
	
	}
}
