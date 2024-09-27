package poly.edu.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductController {
	@GetMapping("/product")
    public String getProductDetail() {

        return "/user/product_detail"; //
    }
}
