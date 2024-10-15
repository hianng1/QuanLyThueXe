package poly.edu.Model;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "KhachHang")
public class KhachHang implements Serializable {
    @Id
    @Column(name = "KhachHangID")
    private String khachHangID;

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

    @OneToMany(mappedBy = "khachHang")
    private List<DonThueXe> donThueXes;

    @OneToMany(mappedBy = "khachHang")
    private List<DanhGiaXe> danhGiaXes;

    // Constructor không tham số
    public KhachHang() {}

    // Constructor với tham số
    public KhachHang(String khachHangID, String hoTen, String email, String soDienThoai, String diaChi, String tenDangNhap, String matKhau, LocalDate ngayDangKy) {
        this.khachHangID = khachHangID;
        this.hoTen = hoTen;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.diaChi = diaChi;
        this.tenDangNhap = tenDangNhap;
        this.matKhau = matKhau;
        this.ngayDangKy = ngayDangKy;
    }

    // Getters và Setters
    public String getKhachHangID() {
        return khachHangID;
    }

    public void setKhachHangID(String khachHangID) {
        this.khachHangID = khachHangID;
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

    public List<DonThueXe> getDonThueXes() {
        return donThueXes;
    }

    public void setDonThueXes(List<DonThueXe> donThueXes) {
        this.donThueXes = donThueXes;
    }

    public List<DanhGiaXe> getDanhGiaXes() {
        return danhGiaXes;
    }

    public void setDanhGiaXes(List<DanhGiaXe> danhGiaXes) {
        this.danhGiaXes = danhGiaXes;
    }
}
