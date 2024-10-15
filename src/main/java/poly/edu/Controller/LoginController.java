package poly.edu.Controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;
import poly.edu.Model.Role;
import poly.edu.Model.User;
import poly.edu.service.UserService;

@Controller
public class LoginController {
	@Autowired
	UserService userService;

	@GetMapping("/login")
	public String showLoginPage() {
		return "/user/login";
	}

	@PostMapping("/login")
	public String login(@RequestParam String username, @RequestParam String password, HttpSession session,
			Model model) {

		Optional<User> user = userService.authenticate(username, password);

		if (user.isPresent()) {
			session.setAttribute("user", user.get());

			Role role = user.get().getRole();
//			switch (role) {
//			case ADMIN:
//				return "redirect:/admin/dashboard";
//			case OWNER:
//				return "redirect:/owner/dashboard";
//			case CUSTOMER:
//				return "redirect:/customer"; // ĐƯỜNG DẪN ĐẾN TRANG CUSTOMER
//			default:
//				return "redirect:/trangchu"; // TRANG CHỦ CHO NGƯỜI DÙNG KHÁC
//			}
			return "redirect:/trangchu";
		}else {
			model.addAttribute("error","Login failed!");
			return "user/login";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();// huy session
		return "redirect:/trangchu"; // TRANG CHỦ CHO NGƯỜI DÙNG KHÁC
	}

}
