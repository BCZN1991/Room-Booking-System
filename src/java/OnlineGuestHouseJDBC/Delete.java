// Java program to illustrate deleting from Database
package OnlineGuestHouseJDBC;
 import java.sql.*; 
import java.util.Properties;
public class Delete 
{ 
	public static void main(String args[]) 
	{ 
		String userID = "6"; 
		String password = "Peace@2020"; 
	Connection dbConnection; 
        try 
        { 
        String url = "jdbc:mysql://localhost:3306/online guest house reservation system?"
                    + "zeroDateTimeBehavior=convertToNull";
        Properties info = new Properties(); 
        info.put("user", "root"); 
        info.put("password", ""); 
        dbConnection = DriverManager.getConnection(url, info); //Connecting to the database
        Statement stmt = dbConnection.createStatement();
			// Deleting from database 
			String q1 = "DELETE from user WHERE userID = '" + userID + 
					"' AND password = '" + password + "'"; 
					
			int x = stmt.executeUpdate(q1); 
			
			if (x > 0)			 
				System.out.println("One User Successfully Deleted");			 
			else
				System.out.println("ERROR OCCURED :("); 
			
			dbConnection.close(); 
		} 
		catch(SQLException e) 
		{ 
			System.out.println(e); 
		} 
	} 
} 
