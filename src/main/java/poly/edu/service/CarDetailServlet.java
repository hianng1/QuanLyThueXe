package poly.edu.service;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import poly.edu.DAO.XeDAO;
import poly.edu.Model.Xe;
import jakarta.servlet.http.*;

@WebServlet("/carDetail")
public class CarDetailServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Autowired
    private XeDAO xeDAO;  // Tự động tiêm XeDAO

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String idXe = request.getParameter("idXe");

        if (idXe != null) {
            // Lấy thông tin xe từ database thông qua XeDAO
            Xe xe = xeDAO.findById(idXe).orElse(null);

            if (xe != null) {
                // Đưa thông tin xe vào request để chuyển tới trang JSP
                request.setAttribute("xe", xe);
            } else {
                // Xử lý khi không tìm thấy xe
                request.setAttribute("error", "Xe không tồn tại!");
            }
        } else {
            // Xử lý khi idXe không có giá trị
            request.setAttribute("error", "ID xe không hợp lệ!");
        }

        // Chuyển hướng tới trang chi tiết xe
        request.getRequestDispatcher("/product_detail.jsp").forward(request, response);
    }
}
