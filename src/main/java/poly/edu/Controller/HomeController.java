package poly.edu.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home(Model model) {
		return "index";
	}
	
	@RequestMapping("/car")
	public String car(Model model) {
		return "/user/product_detail";
	}
}
