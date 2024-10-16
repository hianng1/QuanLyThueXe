	package poly.edu.Model;

import jakarta.persistence.*;

@Entity
@Table(name = "users") // Đặt tên bảng là "users"
public class User {

    @Id
    private String id;  // Khóa chính là kiểu String

    @Column(unique = true, nullable = false)
    private String username;  // Tên đăng nhập phải là duy nhất

    @Column(nullable = false)
    private String password;  // Mật khẩu

    @Column(nullable = false)
    @Enumerated(EnumType.STRING)  // Lưu trữ vai trò người dùng dưới dạng chuỗi
    private Role role;  // Vai trò có thể là CUSTOMER hoặc OWNER hoặc ADMIN

    private boolean activated = true;  // Trạng thái kích hoạt tài khoản

    // Constructor đầy đủ
    public User(String id, String username, String password, Role role, boolean activated) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.role = role;
        this.activated = activated;
    }

    // Constructor mặc định
    public User() {
    }

    // Getter và setter
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Role getRole() {
        return role;
    }

    public void setRole(Role role) {
        this.role = role;
    }

    public boolean isActivated() {
        return activated;
    }

    public void setActivated(boolean activated) {
        this.activated = activated;
    }

    // Phương thức lấy trạng thái người dùng
    public String getRoleName() {
        return role.name();
    }

    // Phương thức trả về trạng thái kích hoạt
    public String isActive() {
        return activated ? "Active" : "Inactive";
    }
}
