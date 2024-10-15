package poly.edu.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;
import poly.edu.Model.Role;
import poly.edu.Model.User;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@GetMapping("/dashboard")
	public String adminDashboard(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if(user != null && user.getRole() == Role.ADMIN) {
			return "/admin/dashboard";
		}
		return "redirect:/access-denied"; // TRANG CHỦ CHO NGƯỜI DÙNG KHÁC
	}
}
