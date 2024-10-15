package poly.edu.Model;

import java.io.Serializable;

import jakarta.persistence.*;

@Entity
@Table(name = "AnhXe")
public class AnhXe implements Serializable {
    @Id
    @Column(name = "AnhXeID")
    private String anhXeID;

    @Column(name = "UrlAnh")
    private String urlAnh;

    // Quan hệ với bảng Xe (nhiều ảnh thuộc về một xe)
    @ManyToOne
    @JoinColumn(name = "XeID")
    private Xe xe;

    // Constructor không tham số
    public AnhXe() {}

    // Constructor có tham số
    public AnhXe(String anhXeID, String urlAnh, Xe xe) {
        this.anhXeID = anhXeID;
        this.urlAnh = urlAnh;
        this.xe = xe;
    }

    // Getters và Setters
    public String getAnhXeID() {
        return anhXeID;
    }

    public void setAnhXeID(String anhXeID) {
        this.anhXeID = anhXeID;
    }

    public String getUrlAnh() {
        return urlAnh;
    }

    public void setUrlAnh(String urlAnh) {
        this.urlAnh = urlAnh;
    }

    public Xe getXe() {
        return xe;
    }

    public void setXe(Xe xe) {
        this.xe = xe;
    }
}
