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
public class CustomerController {
	
	private static final Logger logger = LoggerFactory.getLogger(CustomerController.class);
	
	@GetMapping("/dashboard")
	public String customerDashboard(HttpSession session, Model model) {
		 User user = (User) session.getAttribute("user");
	        if (user != null) {
	            logger.info("User role: {}", user.getRole()); // LOG GIÁ TRỊ CỦA ROLE
	            if (user.getRole() == Role.CUSTOMER) {
	                return "/customer/dashboard";
	            }
	        }
		return "/access-denied"; // TRANG CHỦ CHO NGƯỜI DÙNG KHÁC
	}
	
	@RequestMapping("/myProfile")
	public String profile(Model model) {
		return "customer/profile";
	}
	
	@RequestMapping("/myProfile/changePass")
	public String changePass() {
		return "customer/changePass";
	}
	@RequestMapping("/myProfile/bookingHistory")
	public String BookingHistory() {
		return "customer/bookingHistory";
	}
	@RequestMapping("/myProfile/promotion")
	public String Promotion() {
		return "customer/promotion";
	}
}