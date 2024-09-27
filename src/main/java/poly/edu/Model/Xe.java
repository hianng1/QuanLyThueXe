package poly.edu.Model;

public class Xe {
	
    private String xeID;
    private String nguoiChoThueID;
    private String loaiXe;
    private String hangXe;
    private String bienSoXe;
    private Integer namSanXuat;
    private Double giaThue;
    private String trangThaiXe;
    private Integer soKmDaDi;
    private Integer soGhe;
    
	public Xe() {

	}

	public Xe(String xeID, String nguoiChoThueID, String loaiXe, String hangXe, String bienSoXe, Integer namSanXuat,
			Double giaThue, String trangThaiXe, Integer soKmDaDi, Integer soGhe) {
		this.xeID = xeID;
		this.nguoiChoThueID = nguoiChoThueID;
		this.loaiXe = loaiXe;
		this.hangXe = hangXe;
		this.bienSoXe = bienSoXe;
		this.namSanXuat = namSanXuat;
		this.giaThue = giaThue;
		this.trangThaiXe = trangThaiXe;
		this.soKmDaDi = soKmDaDi;
		this.soGhe = soGhe;
	}

	public String getXeID() {
		return xeID;
	}

	public void setXeID(String xeID) {
		this.xeID = xeID;
	}

	public String getNguoiChoThueID() {
		return nguoiChoThueID;
	}

	public void setNguoiChoThueID(String nguoiChoThueID) {
		this.nguoiChoThueID = nguoiChoThueID;
	}

	public String getLoaiXe() {
		return loaiXe;
	}

	public void setLoaiXe(String loaiXe) {
		this.loaiXe = loaiXe;
	}

	public String getHangXe() {
		return hangXe;
	}

	public void setHangXe(String hangXe) {
		this.hangXe = hangXe;
	}

	public String getBienSoXe() {
		return bienSoXe;
	}

	public void setBienSoXe(String bienSoXe) {
		this.bienSoXe = bienSoXe;
	}

	public Integer getNamSanXuat() {
		return namSanXuat;
	}

	public void setNamSanXuat(Integer namSanXuat) {
		this.namSanXuat = namSanXuat;
	}

	public Double getGiaThue() {
		return giaThue;
	}

	public void setGiaThue(Double giaThue) {
		this.giaThue = giaThue;
	}

	public String getTrangThaiXe() {
		return trangThaiXe;
	}

	public void setTrangThaiXe(String trangThaiXe) {
		this.trangThaiXe = trangThaiXe;
	}

	public Integer getSoKmDaDi() {
		return soKmDaDi;
	}

	public void setSoKmDaDi(Integer soKmDaDi) {
		this.soKmDaDi = soKmDaDi;
	}

	public Integer getSoGhe() {
		return soGhe;
	}

	public void setSoGhe(Integer soGhe) {
		this.soGhe = soGhe;
	}
	
    
}

