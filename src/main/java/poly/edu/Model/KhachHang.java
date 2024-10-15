package poly.edu.Model;

import java.util.Date;

import jakarta.persistence.*;

public class KhachHang {
	
    private String khachHangID;
    private String hoTen;
    private String email;
    private String soDienThoai;
    private String diaChi;
    private String tenDangNhap;
    private String matKhau;
    private Date ngayDangKy;
    
	public KhachHang() {
		
	}
	@ManyToOne
	@JoinColumn(name = "user_id", referencedColumnName = "id")
	private User user;


	public KhachHang(String khachHangID, String hoTen, String email, String soDienThoai, String diaChi,
			String tenDangNhap, String matKhau, Date ngayDangKy) {
		this.khachHangID = khachHangID;
		this.hoTen = hoTen;
		this.email = email;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
		this.tenDangNhap = tenDangNhap;
		this.matKhau = matKhau;
		this.ngayDangKy = ngayDangKy;
	}

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

	public Date getNgayDangKy() {
		return ngayDangKy;
	}

	public void setNgayDangKy(Date ngayDangKy) {
		this.ngayDangKy = ngayDangKy;
	}
	
	
    
}

