
package v_model;

public class VendorInfo {
	String fName2;
	String lName2;
	int age2;
	long contactNo2;
	
	String gender2;
	
	String Vendor_UserId;
	String password2;
	
	public VendorInfo(String fName2, String lName2, int age2, String gender2, long contactNo2, String Vendor_UserId, String password2)
	{
		super();
		this.fName2 = fName2;
		this.lName2 = lName2;
		this.age2 = age2;
		this.contactNo2 = contactNo2;
		
		this.gender2 = gender2;
		
		this.Vendor_UserId = Vendor_UserId;
		this.password2 = password2;
	}

	

	public String getfName() {
		return fName2;
	}

	public void setfName(String fName) {
		this.fName2 = fName;
	}

	public String getlName() {
		return lName2;
	}

	public void setlName(String lName) {
		this.lName2 = lName;
	}

	public int getAge() {
		return age2;
	}

	public void setAge(int age) {
		this.age2 = age;
	}

	public long getContactNo() {
		return contactNo2;
	}

	public void setContactNo(long contactNo) {
		this.contactNo2 = contactNo;
	}

	

	public String getGender() {
		return gender2;
	}

	public void setGender(String gender) {
		this.gender2 = gender;
	}

	
	public String getVendor_UserId() {
		return Vendor_UserId;
	}

	public void setUserId(String Vendor_UserId) {
		this.Vendor_UserId = Vendor_UserId;
	}

	public String getPassword() {
		return password2;
	}

	public void setPassword(String password) {
		this.password2 = password;
	}
	
    public VendorInfo getUser()
    {
    	VendorInfo u = new VendorInfo(fName2, lName2,age2,gender2,contactNo2,Vendor_UserId, password2);

           
           return u;
    }


	
}

