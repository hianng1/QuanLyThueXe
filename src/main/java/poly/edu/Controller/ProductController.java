package poly.edu.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import poly.edu.DAO.XeDAO;
import poly.edu.Model.Xe;

@Controller
public class ProductController {

    @Autowired
    private XeDAO xeDAO;  // Tự động tiêm XeDAO

    @GetMapping("/car")
    public String getProductDetail(@RequestParam("xeID") String xeID, Model model) {
        // Lấy thông tin xe từ database thông qua XeDAO
        Xe xe = xeDAO.findById(xeID).orElse(null);

        if (xe != null) {
            // Đưa thông tin xe vào model để chuyển tới trang JSP
            model.addAttribute("xe", xe);
        } else {
            // Xử lý khi không tìm thấy xe
            model.addAttribute("error", "Xe không tồn tại!");
        }

        // Trả về tên view (JSP)
        return "product_detail"; // không cần / ở trước
    }
}
