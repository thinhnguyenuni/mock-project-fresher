package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.DanhMuc;
import springmvc.dao.DanhMucDAO;

@Service
public class SvDanhMuc{
	
	@Autowired
	private DanhMucDAO ctd;
	
	public void insert(DanhMuc customer) {
		ctd.insert(customer);
	}
	
//	public void update(KhachHang customer) {
//		ctd.update(customer);
//	}
	
	public List<DanhMuc> getAll() {
		return ctd.getAll();
	}
	
	public void delete(String id) {
		ctd.delete(id);
	}
	
	public DanhMuc getById(String id) {
		return ctd.getById(id);
	}
	
	
	
	
}
