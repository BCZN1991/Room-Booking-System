package DAO;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
/**
 *DAO- Data Access Object 
 *DAO Class is Use for Accessing Database 
 */
public class LoginDAO 
{
	protected static String URL="jdbc:mysql://localhost:3306/online guest house reservation system?zeroDateTimeBehavior=convertToNull";
	protected static String DBUsername = "root";
	protected static String DBPassword = "";
	protected static String Driver="com.mysql.jdbc.Driver";
	protected static Connection con=null;
	protected static PreparedStatement  st=null;
	public LoginDAO()
        {
		try 
                {
			Class.forName(Driver);
			con = DriverManager.getConnection(URL,DBUsername,DBPassword);
		}
		catch (ClassNotFoundException e)
		{
		} 
                    catch (SQLException e) 
                { 
                } 
	}
		public boolean check(String username,String password,HttpSession session) throws ServletException,IOException
		{
			
			try 
			{		
				String RegisterQyarry="SELECT * FROM user WhERE email=? AND pass=?";
				st = con.prepareStatement(RegisterQyarry);
				st.setString(1, username);
				st.setString(2, password);
				ResultSet rs =st.executeQuery();
				if(rs.next())
				{
					int id  = rs.getInt("userID");
					session.setAttribute("userID",id);
	
					return true;
				}
			}
			catch (Exception e)
			{
			}  
			finally{
				try{
					if(st!=null)
						st.close();
					if(con!=null)
						con.close();
				}
				catch(SQLException e )
                                {
                                   
				}
			}
                        return false;
			}
			
			
		}
