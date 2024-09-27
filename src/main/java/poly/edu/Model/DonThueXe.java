package poly.edu.Model;

import java.util.Date;

public class DonThueXe {
	
    private String donThueXeID;
    private Date ngayThue;
    private Date ngayTraXe;
    private Double tongTien;
    private String trangThaiDonHang;
    private String khachHangID;
    private String xeID;
    
	public DonThueXe() {
		
	}

	public DonThueXe(String donThueXeID, Date ngayThue, Date ngayTraXe, Double tongTien, String trangThaiDonHang,
			String khachHangID, String xeID) {
		this.donThueXeID = donThueXeID;
		this.ngayThue = ngayThue;
		this.ngayTraXe = ngayTraXe;
		this.tongTien = tongTien;
		this.trangThaiDonHang = trangThaiDonHang;
		this.khachHangID = khachHangID;
		this.xeID = xeID;
	}

	public String getDonThueXeID() {
		return donThueXeID;
	}

	public void setDonThueXeID(String donThueXeID) {
		this.donThueXeID = donThueXeID;
	}

	public Date getNgayThue() {
		return ngayThue;
	}

	public void setNgayThue(Date ngayThue) {
		this.ngayThue = ngayThue;
	}

	public Date getNgayTraXe() {
		return ngayTraXe;
	}

	public void setNgayTraXe(Date ngayTraXe) {
		this.ngayTraXe = ngayTraXe;
	}

	public Double getTongTien() {
		return tongTien;
	}

	public void setTongTien(Double tongTien) {
		this.tongTien = tongTien;
	}

	public String getTrangThaiDonHang() {
		return trangThaiDonHang;
	}

	public void setTrangThaiDonHang(String trangThaiDonHang) {
		this.trangThaiDonHang = trangThaiDonHang;
	}

	public String getKhachHangID() {
		return khachHangID;
	}

	public void setKhachHangID(String khachHangID) {
		this.khachHangID = khachHangID;
	}

	public String getXeID() {
		return xeID;
	}

	public void setXeID(String xeID) {
		this.xeID = xeID;
	}
	
	
    
}
