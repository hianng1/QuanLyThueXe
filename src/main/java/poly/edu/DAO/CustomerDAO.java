package poly.edu.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.edu.Model.KhachHang;

public interface CustomerDAO extends JpaRepository<KhachHang, String> {

}
