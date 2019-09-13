package StudentCatalog;

import java.sql.Connection;
import java.sql.PreparedStatement;

import common.DB_Connection;

public class DeleteValue {

	public void deleteValue(String ID) {
	DB_Connection obj_DB_Connection=new DB_Connection();
	Connection connection=obj_DB_Connection.get_Connection();
	
	PreparedStatement ps=null;
	
	
	try {
	String query="delete from students where ID=?";  //prepared statement
	ps=connection.prepareStatement(query);
	ps.setString(1, ID); 
	ps.executeUpdate();
	
	
	
	} catch (Exception e) {
		System.out.println(e);
	}	
	
}
}
