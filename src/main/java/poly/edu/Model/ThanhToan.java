package poly.edu.Model;

import java.util.Date;

public class ThanhToan {
	
    private String thanhToanID;
    private String phuongThucThanhToan;
    private Date ngayThanhToan;
    private Double soTienThanhToan;
    private String donThueXeID;
    
	public ThanhToan() {
		
	}

	public ThanhToan(String thanhToanID, String phuongThucThanhToan, Date ngayThanhToan, Double soTienThanhToan,
			String donThueXeID) {
		this.thanhToanID = thanhToanID;
		this.phuongThucThanhToan = phuongThucThanhToan;
		this.ngayThanhToan = ngayThanhToan;
		this.soTienThanhToan = soTienThanhToan;
		this.donThueXeID = donThueXeID;
	}

	public String getThanhToanID() {
		return thanhToanID;
	}

	public void setThanhToanID(String thanhToanID) {
		this.thanhToanID = thanhToanID;
	}

	public String getPhuongThucThanhToan() {
		return phuongThucThanhToan;
	}

	public void setPhuongThucThanhToan(String phuongThucThanhToan) {
		this.phuongThucThanhToan = phuongThucThanhToan;
	}

	public Date getNgayThanhToan() {
		return ngayThanhToan;
	}

	public void setNgayThanhToan(Date ngayThanhToan) {
		this.ngayThanhToan = ngayThanhToan;
	}

	public Double getSoTienThanhToan() {
		return soTienThanhToan;
	}

	public void setSoTienThanhToan(Double soTienThanhToan) {
		this.soTienThanhToan = soTienThanhToan;
	}

	public String getDonThueXeID() {
		return donThueXeID;
	}

	public void setDonThueXeID(String donThueXeID) {
		this.donThueXeID = donThueXeID;
	}

	
	
    
}

