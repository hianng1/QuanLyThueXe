package poly.edu.DAO;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import poly.edu.Model.User;

public interface UserDAO extends JpaRepository<User, String> {
	Optional<User> findByUsername(String username);
}
