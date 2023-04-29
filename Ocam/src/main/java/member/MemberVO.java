package member;

public class MemberVO {
	//db를 이용할땐 private써서 필드에 접근못하게한다. 
	private String email;
	private String pwd;
	private int postcode;
	private String address;
	private String detailaddress;
	private int phone;
	private String name;
	
	public MemberVO() {
		
	}
	public MemberVO(String email, String pwd ,int postcode, String address , String detailaddress, int phone, String name) {
		this.email=email;
		this.pwd=pwd;
		this.postcode=postcode;
		this.address=address;
		this.detailaddress=detailaddress;
		this.phone=phone;
		this.name=name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getDetailaddress() {
		return detailaddress;
	}
	public void setDetailaddress(String detailaddress) {
		this.detailaddress = detailaddress;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone1(int phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	
}