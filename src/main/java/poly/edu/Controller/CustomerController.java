package poly.edu.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;
import poly.edu.Model.Role;
import poly.edu.Model.User;

public class CustomerController {
	@GetMapping("/dashboard")
	public String adminDashboard(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if(user != null && user.getRole() == Role.CUSTOMER) {
			return "/customer/dashboard";
		}
		return "redirect:/access-denied"; // TRANG CHỦ CHO NGƯỜI DÙNG KHÁC
	}
}
