package poly.edu.Model;

import java.util.Date;


import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.*;

@Entity
@Table(name = "DanhGiaXe")
public class DanhGiaXe implements Serializable {
    @Id
    @Column(name = "DanhGiaID")
    private String danhGiaID;

    @Column(name = "NoiDungDanhGia", columnDefinition = "TEXT")
    private String noiDungDanhGia;

    @Column(name = "XepHang")
    private Integer xepHang;

    @Column(name = "NgayDanhGia")
    private LocalDate ngayDanhGia;

    @ManyToOne
    @JoinColumn(name = "KhachHangID")
    private KhachHang khachHang;

    @ManyToOne
    @JoinColumn(name = "XeID")
    private Xe xe;

    // Constructor không tham số
    public DanhGiaXe() {}

    // Constructor với tham số
    public DanhGiaXe(String danhGiaID, String noiDungDanhGia, Integer xepHang, LocalDate ngayDanhGia, KhachHang khachHang, Xe xe) {
        this.danhGiaID = danhGiaID;
        this.noiDungDanhGia = noiDungDanhGia;
        this.xepHang = xepHang;
        this.ngayDanhGia = ngayDanhGia;
        this.khachHang = khachHang;
        this.xe = xe;
    }

    // Getters và Setters
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

    public LocalDate getNgayDanhGia() {
        return ngayDanhGia;
    }

    public void setNgayDanhGia(LocalDate ngayDanhGia) {
        this.ngayDanhGia = ngayDanhGia;
    }

    public KhachHang getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    public Xe getXe() {
        return xe;
    }

    public void setXe(Xe xe) {
        this.xe = xe;
    }
}