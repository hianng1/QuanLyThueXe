package poly.edu.Model;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "NguoiChoThue")
public class NguoiChoThue implements Serializable {
    @Id
    @Column(name = "NguoiChoThueID")
    private String nguoiChoThueID;

    @Column(name = "HoTen")
    private String hoTen;

    @Column(name = "Email")
    private String email;

    @Column(name = "SoDienThoai")
    private String soDienThoai;

    @Column(name = "DiaChi")
    private String diaChi;

    @Column(name = "TenDangNhap")
    private String tenDangNhap;

    @Column(name = "MatKhau")
    private String matKhau;

    @Column(name = "NgayDangKy")
    private LocalDate ngayDangKy;

    @Column(name = "DanhGiaNguoiChoThue")
    private Float danhGiaNguoiChoThue;

    @OneToMany(mappedBy = "nguoiChoThue")
    private List<Xe> xeList;

    // Constructor không tham số
    public NguoiChoThue() {}

    // Constructor với tham số
    public NguoiChoThue(String nguoiChoThueID, String hoTen, String email, String soDienThoai, String diaChi, String tenDangNhap, String matKhau, LocalDate ngayDangKy, Float danhGiaNguoiChoThue) {
        this.nguoiChoThueID = nguoiChoThueID;
        this.hoTen = hoTen;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.diaChi = diaChi;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.ngayDangKy = ngayDangKy;
        this.danhGiaNguoiChoThue = danhGiaNguoiChoThue;
    }

    // Getters và Setters
    public String getNguoiChoThueID() {
        return nguoiChoThueID;
    }

    public void setNguoiChoThueID(String nguoiChoThueID) {
        this.nguoiChoThueID = nguoiChoThueID;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getTenDangNhap() {
        return tenDangNhap;
    }

    public void setTenDangNhap(String tenDangNhap) {
        this.tenDangNhap = tenDangNhap;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public LocalDate getNgayDangKy() {
        return ngayDangKy;
    }

    public void setNgayDangKy(LocalDate ngayDangKy) {
        this.ngayDangKy = ngayDangKy;
    }

    public Float getDanhGiaNguoiChoThue() {
        return danhGiaNguoiChoThue;
    }

    public void setDanhGiaNguoiChoThue(Float danhGiaNguoiChoThue) {
        this.danhGiaNguoiChoThue = danhGiaNguoiChoThue;
    }

    public List<Xe> getXeList() {
        return xeList;
    }

    public void setXeList(List<Xe> xeList) {
        this.xeList = xeList;
    }
}
