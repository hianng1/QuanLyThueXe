package poly.edu.DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import poly.edu.Model.AnhXe;
import poly.edu.Model.Xe;

@Repository
public interface AnhXeDAO extends JpaRepository<AnhXe, String> {
    List<AnhXe> findByXe(Xe xe);
}
