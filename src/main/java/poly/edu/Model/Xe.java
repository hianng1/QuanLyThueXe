package poly.edu.Model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.*;

@Entity
@Table(name = "Xe")
public class Xe implements Serializable {
    @Id
    @Column(name = "XeID")
    private String xeID;

    @Column(name = "TenXe")
    private String tenXe;

    @Column(name = "HangXe")
    private String hangXe;

    @Column(name = "MauXe")
    private String mauXe;

    @Column(name = "GiaThue")
    private Double giaThue;

    @Column(name = "TrangThai")
    private Boolean trangThai;

    @ManyToOne
    @JoinColumn(name = "NguoiChoThueID")
    private NguoiChoThue nguoiChoThue;
    
    @OneToMany(mappedBy = "xe")
    private List<DanhGiaXe> danhGiaXes;

    @OneToMany(mappedBy = "xe")
    private List<DonThueXe> donThueXes;

    // Constructor không tham số
    public Xe() {}

    // Constructor với tham số
    public Xe(String xeID, String tenXe, String hangXe, String mauXe, Double giaThue, Boolean trangThai) {
        this.xeID = xeID;
        this.tenXe = tenXe;
        this.hangXe = hangXe;
        this.mauXe = mauXe;
        this.giaThue = giaThue;
        this.trangThai = trangThai;
    }

    // Getters và Setters
    public String getXeID() {
        return xeID;
    }

    public void setXeID(String xeID) {
        this.xeID = xeID;
    }

    public String getTenXe() {
        return tenXe;
    }

    public void setTenXe(String tenXe) {
        this.tenXe = tenXe;
    }

    public String getHangXe() {
        return hangXe;
    }

    public void setHangXe(String hangXe) {
        this.hangXe = hangXe;
    }

    public String getMauXe() {
        return mauXe;
    }

    public void setMauXe(String mauXe) {
        this.mauXe = mauXe;
    }

    public Double getGiaThue() {
        return giaThue;
    }

    public void setGiaThue(Double giaThue) {
        this.giaThue = giaThue;
    }

    public Boolean getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }

    public List<DanhGiaXe> getDanhGiaXes() {
        return danhGiaXes;
    }

    public void setDanhGiaXes(List<DanhGiaXe> danhGiaXes) {
        this.danhGiaXes = danhGiaXes;
    }

    public List<DonThueXe> getDonThueXes() {
        return donThueXes;
    }

    public void setDonThueXes(List<DonThueXe> donThueXes) {
        this.donThueXes = donThueXes;
    }
}
