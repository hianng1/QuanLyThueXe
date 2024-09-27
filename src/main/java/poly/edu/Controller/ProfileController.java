package poly.edu.Controller;

import java.security.PublicKey;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class ProfileController {
	
	@RequestMapping("/profile")
	public String profile(Model model) {
		return "profile/profile";
	}
	
	@RequestMapping("/profile/changePass")
	public String changePass() {
		return "profile/changePass";
	}
	@RequestMapping("/profile/bookingHistory")
	public String BookingHistory() {
		return "profile/bookingHistory";
	}
	@RequestMapping("/profile/promotion")
	public String Promotion() {
		return "profile/promotion";
	}

	
}
