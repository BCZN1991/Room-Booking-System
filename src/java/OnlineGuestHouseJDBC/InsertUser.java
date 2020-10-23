// Java program to illustrate inserting to the Database
package OnlineGuestHouseJDBC;
import java.sql.*; 
import java.util.Properties;
public class InsertUser
{ 
	public static void main(String args[]) 
	{  
           String userID = "12";
           String title = "Ms";
           String name = "Sibongile";
           String surname = "Radebe";
           String email = "info@bczn.co.za";
           String mobileNo = "0845057697";
           String password = "Sibongile@2020";
		
	try
	 { 
            Connection dbConnection; 
  
          String url = "jdbc:mysql://localhost:3306/online guest house reservation system?"
                       + "zeroDateTimeBehavior=convertToNull";
          Properties info = new Properties(); 
          info.put("user", "root"); 
          info.put("password", ""); 
          dbConnection = DriverManager.getConnection(url, info);
			Statement stmt = dbConnection.createStatement(); 
			
			// Inserting data of user in database 
			String q1 = "Insert into user values('" +userID+ "', '" +title+ "', "
                        + "'" +name+ "', '" +surname+ "','" +email+ "','" +mobileNo+ "','" +password+ "')"; 
			int x = stmt.executeUpdate(q1); 
			if (x > 0)			 
				System.out.println("Successfully inserted new user to MySQL Database");			 
			else			
				System.out.println("Insert Failed new user to MySQL Database"); 
			
			dbConnection.close(); 
		} 
		catch(Exception e) 
		{ 
			System.out.println(e); 
		} 
	} 
} 
