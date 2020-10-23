/** Java Program to to connect to MySQL database * */ 
package OnlineGuestHouseJDBC;
import java.sql.Connection; 
import java.sql.DriverManager; 
import java.sql.SQLException; 
import java.util.Properties; 
public class MainConnect
{ 
    public static void main(String[] args) 
    { 
    Connection dbConnection; 
    try 
    { 
        String url = "jdbc:mysql://localhost:3306/online guest house reservation system?"
                    + "zeroDateTimeBehavior=convertToNull";
        Properties info = new Properties();  
        info.put("user", "root"); 
        info.put("password", ""); 
        dbConnection = DriverManager.getConnection(url, info);
        if (dbConnection != null) 
        { 
            System.out.println("Successfully connected to MySQL database"); 
        } 
    } 
    catch (SQLException ex) 
    { 
        System.out.println("An error occurred while connecting MySQL databse");
    } 
    } 
}

