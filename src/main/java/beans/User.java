package beans;

public class User {
	private String email = "";
	private String password = "";
	private String message = "";

	public String getMessage() {
		return message;
	}

	public User() {
	}

	public User(String email, String password) {
		this.email = email;
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	/*
	 * \S : ko bao gom khoang trang \S+ : ko bao gom khoang trang va it nhat 1
	 * khoang trang
	 */
	public boolean validate() {
		// Kiem tra email co rong ko
		if (email == null) {
			message = "No email address set.";
			return false;
		}

		/*
		 * Kiem tra regular expression (tinh hop le) cua email (chua ki tu, so, @, .)
		 * 
		 */
		if (!email.matches("\\w+@\\w+\\.\\w+")) {
			message = "Invalid email address.";
			return false;
		}

		// kiem tra password co rong ko
		if (password == null) {
			message = "No password set.";
			return false;
		}

		// check password co nho hon 8 ki tu ko
		if (password.length() < 8) {
			message = "Password must be at least 8 characters.";
			return false;
		}
		/*
		 * check password co khoang trang khong \\w* : co the co 1, ko hay nhieu hon cac
		 * ki tu chu hoac so \\s+ : khong duoc chua khoang trang
		 */
		if (password.matches("\\w*\\s+\\w*")) {
			message = "Password cannot contain space.";
			return false;
		}

		return true;
	}
}
