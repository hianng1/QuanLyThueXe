//package poly.edu.Controller;
//
//import java.time.LocalDate;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import poly.edu.DAO.KhachHangDAO;
//import poly.edu.Model.KhachHang;
//import poly.edu.Model.NguoiChoThue;
//
//@Controller
//@RequestMapping("/register")
//public class RegisterController {
//	
//	@Autowired
//	KhachHangDAO khDao;
//	@Autowired
//	NguoiChoThue nctDao;
//	
//
//    @PostMapping
//    public String register(@RequestParam String fullName, 
//                           @RequestParam String username, 
//                           @RequestParam String password, 
//                           @RequestParam String email, 
//                           @RequestParam String phone, 
//                           @RequestParam String address, 
//                           @RequestParam String role) {
//        if (role.equals("owner")) {
//            // XỬ LÝ ĐĂNG KÝ CHO CHỦ XE
//            NguoiChoThue nguoiChoThue = new NguoiChoThue();
//            nguoiChoThue.setHoTen(fullName);
//            nguoiChoThue.setTenDangNhap(username);
//            nguoiChoThue.setMatKhau(password);
//            nguoiChoThue.setEmail(email);
//            nguoiChoThue.setSoDienThoai(phone);
//            nguoiChoThue.setDiaChi(address);
//            nguoiChoThue.setNgayDangKy(LocalDate.now());
//            nguoiChoThue.setDanhGiaNguoiChoThue(0f); // ĐÁNH GIÁ BAN ĐẦU
//
//            nctDao.sa
//        } else if (role.equals("customer")) {
//            // XỬ LÝ ĐĂNG KÝ CHO KHÁCH HÀNG
//            KhachHang khachHang = new KhachHang();
//            khachHang.setHoTen(fullName);
//            khachHang.setTenDangNhap(username);
//            khachHang.setMatKhau(password);
//            khachHang.setEmail(email);
//            khachHang.setSoDienThoai(phone);
//            khachHang.setDiaChi(address);
//            khachHang.setNgayDangKy(LocalDate.now());
//
//            khachHangRepository.save(khachHang);
//        }
//
//        return "redirect:/success";
//    }
//}