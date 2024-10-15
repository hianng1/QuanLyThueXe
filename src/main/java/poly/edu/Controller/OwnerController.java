package poly.edu.Controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;
import poly.edu.Model.Role;
import poly.edu.Model.User;

@Controller
@RequestMapping("/owner")
public class OwnerController {
	
	private static final Logger logger = LoggerFactory.getLogger(OwnerController.class);
	@GetMapping("/dashboard")
	public String ownerDashboard(HttpSession session, Model model) {
		 User user = (User) session.getAttribute("user");
	        if (user != null) {
	            logger.info("User role: {}", user.getRole()); // LOG GIÁ TRỊ CỦA ROLE
	            if (user.getRole() == Role.OWNER) {
	                return "/owner/dashboard";
	            }
	        }
		return "/access-denied"; // TRANG CHỦ CHO NGƯỜI DÙNG KHÁC
	}
}