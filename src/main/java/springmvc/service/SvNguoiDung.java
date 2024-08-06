package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.NguoiDung;
import springmvc.dao.NguoiDungDAO;

@Service
public class SvNguoiDung{
	
	@Autowired
	private NguoiDungDAO ctd;
	
	public void insert(NguoiDung customer) {
		ctd.insert(customer);
	}
	
//	public void update(KhachHang customer) {
//		ctd.update(customer);
//	}
	
	public List<NguoiDung> getAll() {
		return ctd.getAll();
	}
	
	public void delete(String id) {
		ctd.delete(id);
	}
	
	public NguoiDung getById(String id) {
		return ctd.getById(id);
	}
	
	
	
	
}
