// Java program to illustrate updating the Database 
package OnlineGuestHouseJDBC;
import java.sql.*; 
import java.util.Properties;
public class UpdateDetails 
{ 
	public static void main(String args[]) 
	{ 
		String userID = "1"; 
		String password = "Bczn@2020"; 
		String newPassword = "Bczn@2021"; 
		try
	 { 
            Connection dbConnection; 
  
          String url = "http://localhost/phpmyadmin/sql.php?server=1&db=online+"
                       + "guest+house+reservation+system&table=login&pos=0";
          Properties info = new Properties(); 
          info.put("user", "root"); 
          info.put("password", ""); 
          dbConnection = DriverManager.getConnection(url, info);
			Statement stmt = dbConnection.createStatement();
		
			// Updating database 
			String q1 = "UPDATE userid set pwd = '" + newPassword + 
					"' WHERE id = '" +userID+ "' AND pwd = '" + password + "'"; 
			int x = stmt.executeUpdate(q1); 
			
			if (x > 0)			 
				System.out.println("Password Successfully Updated");			 
			else			
				System.out.println("ERROR OCCURED :("); 
			
			dbConnection.close(); 
		} 
		catch(Exception e) 
		{ 
			System.out.println(e); 
		} 
	} 
} 
