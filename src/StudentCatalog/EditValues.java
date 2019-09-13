package StudentCatalog;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import common.DB_Connection;
import common.StudentBean;

public class EditValues {

	public StudentBean editValues(String ID) {
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_Connection();
	
	PreparedStatement ps=null;
	ResultSet rs=null;
	StudentBean obj_StudentBean=new StudentBean();
	
	
	try {
	String query="Select * from students where ID=?";  //prepared statement
	ps=connection.prepareStatement(query);
	ps.setString(1, ID);
	rs=ps.executeQuery();
	
	
	while(rs.next()) {
		
		obj_StudentBean.setID(rs.getString("ID"));
		obj_StudentBean.setFirstName(rs.getString("firstName"));
		obj_StudentBean.setLastName(rs.getString("lastName"));
		obj_StudentBean.setEmail(rs.getString("Email"));
		obj_StudentBean.setMobile(rs.getString("Mobile"));
		obj_StudentBean.setCourses(rs.getString("Courses"));
		obj_StudentBean.setGPA(rs.getString("GPA"));
		
	}
	
	} catch (Exception e) {
		System.out.println(e);
	}
	return obj_StudentBean;
	}

	public void updateValues(StudentBean obj_StudentBean) {
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_Connection();
	
	PreparedStatement ps=null;
	
	
	try {
	String query="update students set firstName=?,lastName=?,Email=?,Mobile=?,Courses=?,GPA=? where ID=?";  //prepared statement
	ps=connection.prepareStatement(query);
	ps.setString(1, obj_StudentBean.getFirstName());
	ps.setString(2, obj_StudentBean.getLastName());
	ps.setString(3, obj_StudentBean.getEmail());
	ps.setString(4, obj_StudentBean.getMobile());
	ps.setString(5, obj_StudentBean.getCourses());
	ps.setString(6, obj_StudentBean.getGPA());
	ps.setString(7, obj_StudentBean.getID());
	ps.executeUpdate();
	
	
	
	} catch (Exception e) {
		System.out.println(e);
	}	
}
}


