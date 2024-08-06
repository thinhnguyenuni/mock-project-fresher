package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.LoaiTin;
import springmvc.dao.LoaiTinDAO;

@Service
public class SvLoaiTin{
	
	@Autowired
	private LoaiTinDAO ctd;
	
	public void insert(LoaiTin customer) {
		ctd.insert(customer);
	}
	
//	public void update(KhachHang customer) {
//		ctd.update(customer);
//	}
	
	public List<LoaiTin> getAll() {
		return ctd.getAll();
	}
	
	public void delete(String id) {
		ctd.delete(id);
	}
	
	public LoaiTin getById(String id) {
		return ctd.getById(id);
	}
	
	
	
	
}
