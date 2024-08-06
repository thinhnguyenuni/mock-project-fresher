package entity;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class LoaiTin {
	@Id
	@Pattern(regexp = "^LT\\d{5}$", message = "Mã loại tin không hợp lệ")
	private String maLoaiTin;
	private String tenLoaiTin;


	public LoaiTin() {
	}

	public LoaiTin(@Pattern(regexp = "^LT\\d{5}$", message = "Mã loại tin không hợp lệ") String maLoaiTin,
			String tenLoaiTin) {
		this.maLoaiTin = maLoaiTin;
		this.tenLoaiTin = tenLoaiTin;
	}

	public String getMaLoaiTin() {
		return maLoaiTin;
	}

	public void setMaLoaiTin(String maLoaiTin) {
		this.maLoaiTin = maLoaiTin;
	}

	public String getTenLoaiTin() {
		return tenLoaiTin;
	}

	public void setTenLoaiTin(String tenLoaiTin) {
		this.tenLoaiTin = tenLoaiTin;
	}

	

	
	
	
}
