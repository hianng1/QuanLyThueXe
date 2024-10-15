package poly.edu.Model;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.*;

@Entity
@Table(name = "ThanhToan")
public class ThanhToan implements Serializable {
    @Id
    @Column(name = "ThanhToanID")
    private String thanhToanID;

    @Column(name = "PhuongThucThanhToan")
    private String phuongThucThanhToan;

    @Column(name = "NgayThanhToan")
    private LocalDate ngayThanhToan;

    @Column(name = "SoTienThanhToan")
    private Double soTienThanhToan;

    @ManyToOne
    @JoinColumn(name = "DonThueXeID")
    private DonThueXe donThueXe;

    // Constructor không tham số
    public ThanhToan() {}

    // Constructor với tham số
    public ThanhToan(String thanhToanID, String phuongThucThanhToan, LocalDate ngayThanhToan, Double soTienThanhToan, DonThueXe donThueXe) {
        this.thanhToanID = thanhToanID;
        this.phuongThucThanhToan = phuongThucThanhToan;
        this.ngayThanhToan = ngayThanhToan;
        this.soTienThanhToan = soTienThanhToan;
        this.donThueXe = donThueXe;
    }

    // Getters và Setters
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

    public LocalDate getNgayThanhToan() {
        return ngayThanhToan;
    }

    public void setNgayThanhToan(LocalDate ngayThanhToan) {
        this.ngayThanhToan = ngayThanhToan;
    }

    public Double getSoTienThanhToan() {
        return soTienThanhToan;
    }

    public void setSoTienThanhToan(Double soTienThanhToan) {
        this.soTienThanhToan = soTienThanhToan;
    }

    public DonThueXe getDonThueXe() {
        return donThueXe;
    }

    public void setDonThueXe(DonThueXe donThueXe) {
        this.donThueXe = donThueXe;
    }
}
