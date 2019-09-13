package StudentCatalog;

import java.sql.Connection;
import java.sql.PreparedStatement;

import common.DB_Connection;

//Method can insert value to database
public class InsertValues {

	public void insertValues(String ID,String firstName,String lastName,String Email,String Mobile,String Courses,String GPA) {
		DB_Connection obj_DB_Connection=new DB_Connection();
		Connection connection=obj_DB_Connection.get_Connection();
		
		PreparedStatement ps=null;
		try {
		String query="insert into students(ID,firstName,lastName,Email,Mobile,Courses,GPA) values(?,?,?,?,?,?,?)"; //prepared statement
		ps=connection.prepareStatement(query);
		
		ps.setString(1, ID);
		ps.setString(2, firstName);
		ps.setString(3, lastName);
		ps.setString(4, Email);
		ps.setString(5, Mobile);
		ps.setString(6, Courses);
		ps.setString(7, GPA);
		
		ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
}
