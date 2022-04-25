package member.vo;

public class Member {
	private int number;//회원번호를 뜻하는 것을 지정하기 위해서 사용 
	private String id; 
	private String pw; 
	private String name; 
	private String email; 
	//생성자
	public Member() { 
		
	} 
	
	public Member(int number, String id, String pw, String name, String email) { 
		super();
		this.number = number; 
		this.id = id; 
		this.pw = pw; 
		this.name = name; 
		this.email = email; 
		}

	public int getNumber() {
		return number;
	}

	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setEmail(String email) {
		this.email = email;
	} 
}
