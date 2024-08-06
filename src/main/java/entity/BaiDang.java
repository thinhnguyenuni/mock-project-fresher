package entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class BaiDang {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maBaiDang;

	@ManyToOne(fetch = FetchType.LAZY)
	private NguoiDung nguoiDung;

	@ManyToOne(fetch = FetchType.LAZY)
	private DanhMuc danhMuc;

	@ManyToOne(fetch = FetchType.LAZY)
	private VungMien vungMien;

	private String banLa;
	private String banDangTin;
	private String tinhTrang;
	private String diaChi;
	private Double dienTich;
	private String huong;
	private String tuaDe;
	private String noiDung;
	private int gia;
	private String giaThoaThuan;
	private String img;

	public BaiDang() {
	}

	public BaiDang(int maBaiDang, NguoiDung nguoiDung, DanhMuc danhMuc, VungMien vungMien, String banLa,
			String banDangTin, String tinhTrang, String diaChi, Double dienTich, String huong, String tuaDe,
			String noiDung, int gia, String giaThoaThuan, String img) {
		this.maBaiDang = maBaiDang;
		this.nguoiDung = nguoiDung;
		this.danhMuc = danhMuc;
		this.vungMien = vungMien;
		this.banLa = banLa;
		this.banDangTin = banDangTin;
		this.tinhTrang = tinhTrang;
		this.diaChi = diaChi;
		this.dienTich = dienTich;
		this.huong = huong;
		this.tuaDe = tuaDe;
		this.noiDung = noiDung;
		this.gia = gia;
		this.giaThoaThuan = giaThoaThuan;
		this.img = img;
	}

	public int getMaBaiDang() {
		return maBaiDang;
	}

	public void setMaBaiDang(int maBaiDang) {
		this.maBaiDang = maBaiDang;
	}

	public NguoiDung getNguoiDung() {
		return nguoiDung;
	}

	public void setNguoiDung(NguoiDung nguoiDung) {
		this.nguoiDung = nguoiDung;
	}

	public DanhMuc getDanhMuc() {
		return danhMuc;
	}

	public void setDanhMuc(DanhMuc danhMuc) {
		this.danhMuc = danhMuc;
	}

	public VungMien getVungMien() {
		return vungMien;
	}

	public void setVungMien(VungMien vungMien) {
		this.vungMien = vungMien;
	}

	public String getBanLa() {
		return banLa;
	}

	public void setBanLa(String banLa) {
		this.banLa = banLa;
	}

	public String getBanDangTin() {
		return banDangTin;
	}

	public void setBanDangTin(String banDangTin) {
		this.banDangTin = banDangTin;
	}

	public String getTinhTrang() {
		return tinhTrang;
	}

	public void setTinhTrang(String tinhTrang) {
		this.tinhTrang = tinhTrang;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public Double getDienTich() {
		return dienTich;
	}

	public void setDienTich(Double dienTich) {
		this.dienTich = dienTich;
	}

	public String getHuong() {
		return huong;
	}

	public void setHuong(String huong) {
		this.huong = huong;
	}

	public String getTuaDe() {
		return tuaDe;
	}

	public void setTuaDe(String tuaDe) {
		this.tuaDe = tuaDe;
	}

	public String getNoiDung() {
		return noiDung;
	}

	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public String getGiaThoaThuan() {
		return giaThoaThuan;
	}

	public void setGiaThoaThuan(String giaThoaThuan) {
		this.giaThoaThuan = giaThoaThuan;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Override
	public String toString() {
		return "BaiDang [maBaiDang=" + maBaiDang + ", nguoiDung=" + nguoiDung + ", danhMuc=" + danhMuc + ", vungMien="
				+ vungMien + ", banLa=" + banLa + ", banDangTin=" + banDangTin + ", tinhTrang=" + tinhTrang
				+ ", diaChi=" + diaChi + ", dienTich=" + dienTich + ", huong=" + huong + ", tuaDe=" + tuaDe
				+ ", noiDung=" + noiDung + ", gia=" + gia + ", giaThoaThuan=" + giaThoaThuan + ", img=" + img + "]";
	}

	
	
}
