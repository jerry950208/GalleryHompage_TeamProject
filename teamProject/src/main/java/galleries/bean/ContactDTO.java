package galleries.bean;

public class ContactDTO {
	String name;
    String email;
	String message;
    String logDate;
	
    @Override
	public String toString() {
		return "ContactDTO [name=" + name + ", email=" + email + ", message=" + message + ", logDate=" + logDate + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getLogDate() {
		return logDate;
	}
	public void setLogDate(String logDate) {
		this.logDate = logDate;
	}
}
