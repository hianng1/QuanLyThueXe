package poly.edu.Model;

import java.io.Serializable;
import java.util.List;
import java.util.Date;

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

    @Column(name = "SoGhe")
    private Integer soGhe;

    @Column(name = "NhienLieu")
    private String nhienLieu;

    @Column(name = "TieuHaoNhienLieu")
    private Double tieuHaoNhienLieu; // Lít/100km

    @Column(name = "DiaDiemGiaoXe")
    private String diaDiemGiaoXe;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "NgayNhanXe")
    private Date ngayNhanXe;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(name = "NgayTraXe")
    private Date ngayTraXe;

    @Column(name = "AnhDaiDien")
    private String anhDaiDien; // Thuộc tính mới

    // Quan hệ với bảng NguoiChoThue
    @ManyToOne
    @JoinColumn(name = "NguoiChoThueID")
    private NguoiChoThue nguoiChoThue;

    // Quan hệ với bảng DanhGiaXe
    @OneToMany(mappedBy = "xe")
    private List<DanhGiaXe> danhGiaXes;

    // Quan hệ với bảng DonThueXe
    @OneToMany(mappedBy = "xe")
    private List<DonThueXe> donThueXes;

    // Quan hệ với bảng AnhXe (liên kết với nhiều ảnh)
    @OneToMany(mappedBy = "xe")
    private List<AnhXe> anhXes;

    // Constructor không tham số
    public Xe() {}

    // Constructor với tham số (cập nhật)
    public Xe(String xeID, String tenXe, String hangXe, String mauXe, Double giaThue, Boolean trangThai, Integer soGhe, String nhienLieu, Double tieuHaoNhienLieu, String diaDiemGiaoXe, Date ngayNhanXe, Date ngayTraXe, String anhDaiDien) {
        this.xeID = xeID;
        this.tenXe = tenXe;
        this.hangXe = hangXe;
        this.mauXe = mauXe;
        this.giaThue = giaThue;
        this.trangThai = trangThai;
        this.soGhe = soGhe;
        this.nhienLieu = nhienLieu;
        this.tieuHaoNhienLieu = tieuHaoNhienLieu;
        this.diaDiemGiaoXe = diaDiemGiaoXe;
        this.ngayNhanXe = ngayNhanXe;
        this.ngayTraXe = ngayTraXe;
        this.anhDaiDien = anhDaiDien; // Gán giá trị cho thuộc tính mới
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

    public Integer getSoGhe() {
        return soGhe;
    }

    public void setSoGhe(Integer soGhe) {
        this.soGhe = soGhe;
    }

    public String getNhienLieu() {
        return nhienLieu;
    }

    public void setNhienLieu(String nhienLieu) {
        this.nhienLieu = nhienLieu;
    }

    public Double getTieuHaoNhienLieu() {
        return tieuHaoNhienLieu;
    }

    public void setTieuHaoNhienLieu(Double tieuHaoNhienLieu) {
        this.tieuHaoNhienLieu = tieuHaoNhienLieu;
    }

    public String getDiaDiemGiaoXe() {
        return diaDiemGiaoXe;
    }

    public void setDiaDiemGiaoXe(String diaDiemGiaoXe) {
        this.diaDiemGiaoXe = diaDiemGiaoXe;
    }

    public Date getNgayNhanXe() {
        return ngayNhanXe;
    }

    public void setNgayNhanXe(Date ngayNhanXe) {
        this.ngayNhanXe = ngayNhanXe;
    }

    public Date getNgayTraXe() {
        return ngayTraXe;
    }

    public void setNgayTraXe(Date ngayTraXe) {
        this.ngayTraXe = ngayTraXe;
    }

    public String getAnhDaiDien() {
        return anhDaiDien; // Getter cho thuộc tính anhDaiDien
    }

    public void setAnhDaiDien(String anhDaiDien) {
        this.anhDaiDien = anhDaiDien; // Setter cho thuộc tính anhDaiDien
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

    public List<AnhXe> getAnhXes() {
        return anhXes;
    }

    public void setAnhXes(List<AnhXe> anhXes) {
        this.anhXes = anhXes;
    }
}
