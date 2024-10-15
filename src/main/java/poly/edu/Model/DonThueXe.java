package poly.edu.Model;

import java.io.Serializable;

import java.util.Date;
import java.util.UUID;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;

import lombok.Data;

import java.io.Serializable;
import java.time.LocalDate;

import jakarta.persistence.*;
@Entity
@Table(name = "DonThueXe")
public class DonThueXe implements Serializable {
    @Id
    @GeneratedValue
    @Column(name = "DonThueXeID")
    private String donThueXeID;

    @PrePersist
    protected void onCreate() {
        if (this.donThueXeID == null) {
            this.donThueXeID = UUID.randomUUID().toString();
        }
    }
    @Column(name = "NgayThue")
    private LocalDate ngayThue;

    @Column(name = "NgayTraXe")
    private LocalDate ngayTraXe;

    @Column(name = "TongTien")
    private Double tongTien;

    @Column(name = "TrangThaiDonHang")
    private String trangThaiDonHang;

    @ManyToOne
    @JoinColumn(name = "KhachHangID")
    private KhachHang khachHang;

    @ManyToOne
    @JoinColumn(name = "XeID")
    private Xe xe;

    // Constructor không tham số
    public DonThueXe() {}

    // Constructor với tham số
    public DonThueXe(String donThueXeID, LocalDate ngayThue, LocalDate ngayTraXe, Double tongTien, String trangThaiDonHang, KhachHang khachHang, Xe xe) {
        this.donThueXeID = donThueXeID;
        this.ngayThue = ngayThue;
        this.ngayTraXe = ngayTraXe;
        this.tongTien = tongTien;
        this.trangThaiDonHang = trangThaiDonHang;
        this.khachHang = khachHang;
        this.xe = xe;
    }

    // Getters và Setters
    public String getDonThueXeID() {
        return donThueXeID;
    }

    public void setDonThueXeID(String donThueXeID) {
        this.donThueXeID = donThueXeID;
    }

    public LocalDate getNgayThue() {
        return ngayThue;
    }

    public void setNgayThue(LocalDate ngayThue) {
        this.ngayThue = ngayThue;
    }

    public LocalDate getNgayTraXe() {
        return ngayTraXe;
    }

    public void setNgayTraXe(LocalDate ngayTraXe) {
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