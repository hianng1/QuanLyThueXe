package poly.edu.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import poly.edu.Model.Role;
import poly.edu.Model.User;

@Component
public class RoleInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        HttpSession session = request.getSession(false);
        if (session != null) {
            User user = (User) session.getAttribute("user");
            if (user != null) {
                String uri = request.getRequestURI();

                // KIỂM TRA QUYỀN HẠN DỰA TRÊN ĐƯỜNG DẪN
                if (uri.startsWith("/admin") && user.getRole() != Role.ADMIN) {
                    response.sendRedirect("/access-denied"); // TRANG THÔNG BÁO TRUY CẬP BỊ TỪ CHỐI
                    return false;
                } else if (uri.startsWith("/owner") && user.getRole() != Role.OWNER) {
                    response.sendRedirect("/access-denied");
                    return false;
                } else if (uri.startsWith("/customer") && user.getRole() != Role.CUSTOMER) {
                    response.sendRedirect("/access-denied"); // KIỂM TRA QUYỀN CUSTOMER
                    return false;
                }
                // THÊM CÁC ĐIỀU KIỆN PHÂN QUYỀN KHÁC NẾU CẦN
            }
        }
        return true; // CHO PHÉP TRUY CẬP NẾU KHÔNG CÓ VẤN ĐỀ
    }
}
