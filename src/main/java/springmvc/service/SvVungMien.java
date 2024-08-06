package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.VungMien;
import springmvc.dao.VungMienDAO;

@Service
public class SvVungMien{
	
	@Autowired
	private VungMienDAO ctd;
	
	public void insert(VungMien customer) {
		ctd.insert(customer);
	}
	
//	public void update(KhachHang customer) {
//		ctd.update(customer);
//	}
	
	public List<VungMien> getAll() {
		return ctd.getAll();
	}
	
	public void delete(String id) {
		ctd.delete(id);
	}
	
	public VungMien getById(String id) {
		return ctd.getById(id);
	}
	
	
	
	
}
