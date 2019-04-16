package v_model;

public class Vendordetails {
	String fName2;
	String lName2;
	int age2;
	long contactNo2;
	
	String gender2;
	
	String Vendor_UserId;
	String Vendor_Id;
	String address;
	String city;
	String zipcode;
	String landline;
	String email;

	public Vendordetails(String fName2, String lName2, int age2, long contactNo2, String gender2, String vendor_UserId,
			String vendor_Id, String address, String city, String zipcode, String landline, String email) {
		super();
		this.fName2 = fName2;
		this.lName2 = lName2;
		this.age2 = age2;
		this.contactNo2 = contactNo2;
		this.gender2 = gender2;
		Vendor_UserId = vendor_UserId;
		Vendor_Id = vendor_Id;
		this.address = address;
		this.city = city;
		this.zipcode = zipcode;
		this.landline = landline;
		this.email = email;
	}
	
	public String getfName2() {
		return fName2;
	}
	public void setfName2(String fName2) {
		this.fName2 = fName2;
	}
	public String getlName2() {
		return lName2;
	}
	public void setlName2(String lName2) {
		this.lName2 = lName2;
	}
	public int getAge2() {
		return age2;
	}
	public void setAge2(int age2) {
		this.age2 = age2;
	}
	public long getContactNo2() {
		return contactNo2;
	}
	public void setContactNo2(long contactNo2) {
		this.contactNo2 = contactNo2;
	}
	public String getGender2() {
		return gender2;
	}
	public void setGender2(String gender2) {
		this.gender2 = gender2;
	}
	public String getVendor_UserId() {
		return Vendor_UserId;
	}
	public void setVendor_UserId(String vendor_UserId) {
		Vendor_UserId = vendor_UserId;
	}
	public String getVendor_Id() {
		return Vendor_Id;
	}
	public void setVendor_Id(String vendor_Id) {
		Vendor_Id = vendor_Id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getLandline() {
		return landline;
	}
	public void setLandline(String landline) {
		this.landline = landline;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}