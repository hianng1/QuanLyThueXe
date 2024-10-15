package poly.edu.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/trangchu")
	public String home(Model model) {
		return "index";
	}
	@RequestMapping("/dangkyxe")
	public String owner(Model model) {
		return "owner/register";
	}
	
	@RequestMapping("/car")
	public String car(Model model) {
		return "/customer/product_detail";
	}
}
