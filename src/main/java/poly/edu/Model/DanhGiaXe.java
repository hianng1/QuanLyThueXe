package poly.edu.Model;

import java.util.Date;

public class DanhGiaXe {
	
	private String danhGiaID;
	private String noiDungDanhGia;
	private Integer xepHang;
	private Date ngayDanhGia;
	private String khachHangID;
	private String xeID;
	
	public DanhGiaXe(String danhGiaID, String noiDungDanhGia, Integer xepHang, Date ngayDanhGia, String khachHangID,
			String xeID) {
		this.danhGiaID = danhGiaID;
		this.noiDungDanhGia = noiDungDanhGia;
		this.xepHang = xepHang;
		this.ngayDanhGia = ngayDanhGia;
		this.khachHangID = khachHangID;
		this.xeID = xeID;
	}

	public DanhGiaXe() {
		
	}

	public String getDanhGiaID() {
		return danhGiaID;
	}

	public void setDanhGiaID(String danhGiaID) {
		this.danhGiaID = danhGiaID;
	}

	public String getNoiDungDanhGia() {
		return noiDungDanhGia;
	}

	public void setNoiDungDanhGia(String noiDungDanhGia) {
		this.noiDungDanhGia = noiDungDanhGia;
	}

	public Integer getXepHang() {
		return xepHang;
	}

	public void setXepHang(Integer xepHang) {
		this.xepHang = xepHang;
	}

	public Date getNgayDanhGia() {
		return ngayDanhGia;
	}

	public void setNgayDanhGia(Date ngayDanhGia) {
		this.ngayDanhGia = ngayDanhGia;
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
