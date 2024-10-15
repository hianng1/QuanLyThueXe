package poly.edu.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import poly.edu.DAO.UserDAO;
import poly.edu.Model.User;

@Service
public class UserService {
	@Autowired
    private UserDAO userDAO;

    public Optional<User> authenticate(String username, String password) {
        return userDAO.findByUsername(username)
                .filter(user -> user.getPassword().equals(password)); // NÊN SỬ DỤNG MÃ HÓA PASSWORD
    }
}
