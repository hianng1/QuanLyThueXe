package poly.edu.DAO;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

import poly.edu.Model.Xe;

public interface XeDAO extends JpaRepository<Xe, String> {
    List<Xe> findByTrangThai(Boolean trangThai);
    // Ví dụ: tìm xe theo hãng xe
    List<Xe> findByHangXe(String hangXe);
    
    // Ví dụ: tìm xe theo loại xe
    List<Xe> findByTenXe(String tenXe);
}

