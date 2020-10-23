package Entities;
public class User 
{
        private int userID;
	private String title;
	private String name;
	private String surname;
	private String email;
	private String mobileNo;
        private String password;

    public User(int userID,String title, String name, String surname, String email, String mobileNo, String password) 
    {
        this.userID = userID;
        this.title = title;
        this.name = name;
        this.surname = surname;
        this.surname = surname;
        this.email = email;
        this.mobileNo = mobileNo;
        this.password = password;
     }

     public int getUserId() 
                            {
                                    return userID;
                            }
                            public void setUserId(int userID) 
                            {
                                    this.userID = userID;
                            }
                            
                             public String getTitle() 
                            {
                                    return title;
                            }
                            public void setTitle(String title) 
                            {
                                    this.title = title;
                            }       
        
	public String getName() 
        {
		return name;
	}
	public void setName(String name) 
        {
		this.name= name;
	}
	public String getSurname() 
        {
		return surname;
	}
	public void setSurname(String surname) 
        {
		this.surname = surname;
	}
	public String getEmail() 
        {
		return email;
	}
	public void setEmail(String email) 
        {
		this.email = email;
	}
	public String getMobileNo() 
        {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) 
        {
		this.mobileNo = mobileNo;
	}
	public String getPassword() 
        {
		return password;
	}
	public void setPassword(String password)
        {
		this.password = password;
	}
}
