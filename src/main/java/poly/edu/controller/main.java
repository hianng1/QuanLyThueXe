package poly.edu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class main {
	@RequestMapping("/index")
	public String dashboard(Model model) {
		model.addAttribute("name", "Mioto - Cùng Bạn Đến Mọi Hành Trình");
		return "index";
	}
	
}
