
package models;

public class UserInfo {
	String fName;
	String lName;
	int age;
	long contactNo;
	String emailId;
	String gender;
	String city;
	String state;
	String userId;
	String password;
	
	public UserInfo()
	{
		
	}

	public UserInfo(String fName, String lName, int age, long contactNo,  String gender,String userId, String password) {
		super();
		this.fName = fName;
		this.lName = lName;
		this.age = age;
		this.contactNo = contactNo;
		
		this.gender = gender;
		
		this.userId = userId;
		this.password = password;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public long getContactNo() {
		return contactNo;
	}

	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}

	

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
    public UserInfo getUser()
    {
           UserInfo u = new UserInfo(fName, lName,age,contactNo,gender,userId, password);

           
           return u;
    }


	
}
