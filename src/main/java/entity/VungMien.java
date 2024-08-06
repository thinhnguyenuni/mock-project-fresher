package entity;


import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Pattern;


@Entity
public class VungMien {
	@Id
	@Pattern(regexp = "^VM\\d{5}$", message = "Mã loại tin không hợp lệ")
	private String maVungMien;
	private String tenVungMien;

	@OneToMany(mappedBy = "vungMien", cascade = CascadeType.ALL)
	private List<BaiDang> listBaiDang = new ArrayList<BaiDang>();
	
	public VungMien() {
	}

	public VungMien(@Pattern(regexp = "^LT\\d{5}$", message = "Mã loại tin không hợp lệ") String maVungMien,
			String tenVungMien) {
		this.maVungMien = maVungMien;
		this.tenVungMien = tenVungMien;
	}

	public String getMaVungMien() {
		return maVungMien;
	}

	public void setMaVungMien(String maVungMien) {
		this.maVungMien = maVungMien;
	}

	public String getTenVungMien() {
		return tenVungMien;
	}

	public void setTenVungMien(String tenVungMien) {
		this.tenVungMien = tenVungMien;
	}

	

	
	
	
}
