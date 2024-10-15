package poly.edu.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import poly.edu.DAO.AnhXeDAO;
import poly.edu.DAO.XeDAO;
import poly.edu.Model.AnhXe;
import poly.edu.Model.Xe;



@Controller
public class HomeController {
	@Autowired
	XeDAO xeDAO;

	@Autowired
	AnhXeDAO anhXeDAO;

	@RequestMapping("/trangchu")
	public String home(Model model) {
	    List<Xe> items = xeDAO.findAll();
//
//	    // Lấy danh sách ảnh của mỗi xe
//	    for (Xe xe : items) {
//	        List<AnhXe> anhXes = anhXeDAO.findByXe(xe);
//	        if (!anhXes.isEmpty()) {
//	            // Lấy ảnh đầu tiên của xe để hiển thị trên card
//	            xe.setAnhDaiDien(anhXes.get(0).getUrlAnh()); // Gán URL ảnh đầu tiên
//	        }
//	    }
	    model.addAttribute("items", items);
	    return "index";
	}


	
	@RequestMapping("/dangkyxe")
	public String owner(Model model) {
		return "owner/register";
	}
	
	@RequestMapping("/car")
	public String car(@RequestParam("xeID") String xeID, Model model) {
	    Xe xe = xeDAO.findById(xeID).orElse(null); // Tìm xe theo ID
	    model.addAttribute("xe", xe);
	    return "/user/product_detail";
	}
}
