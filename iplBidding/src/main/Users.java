package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Users {

	
	
	static public boolean authenticate(String Id,String pass,String type)
	{
		try
		{
	
		String dbURL2 = "jdbc:postgresql://localhost/ipl";
        String user = "user1";
        String pass1 = "user123";

		try 
		{
			System.out.println("yehi");
			Class.forName("org.postgresql.Driver");
			System.out.println("yehi2");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
		Connection	conn = DriverManager.getConnection(dbURL2, user, pass1);
			
		ResultSet rs;
		Statement st = conn.createStatement();
		
		if(type.equals("p"))
		{
	        rs = st.executeQuery("SELECT * from players where userid ='" + Id +"' and password = '"  + pass + "'");	
		}
		
		else if(type.equals("t"))
		{
			rs = st.executeQuery("SELECT * from teams where teamId ='" + Id +"' and pass = '"  + pass + "'");
		}
		
		else
		{
			rs = st.executeQuery("SELECT * from admins where userid ='" + Id +"' and password = '"  + pass + "'");
		}

		if(!rs.next())
		{
			return false;
		}
		
		return true;
		
		}
		
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		
		return false;

	}
}
