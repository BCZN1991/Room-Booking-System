package DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public class RegisterDAO 
{
    private Connection connection;
    private Statement statement;
    public void getConnection() throws ClassNotFoundException, SQLException
    {
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/"
        + "online guest house reservation system?zeroDateTimeBehavior=convertToNull","root","");
        statement = connection.createStatement();
    }
    public void close() throws SQLException
    {
        connection.close();
        statement.close();
    }
    public int register(int userID,String title,String name, String surname,
                        String email, String mobileNo, String password ) throws SQLException
    {
                String sql = "insert into user(userID, title, name, surname, email, mobileNo, password)"+
                "value("+userID+",'"+title+"','"+name+"','"+surname+"','"+email+"','"+mobileNo+"','"+password+"',)";
        return statement.executeUpdate(sql);
                
        
    }
    
}










