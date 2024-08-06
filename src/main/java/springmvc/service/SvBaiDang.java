package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.BaiDang;
import springmvc.dao.BaiDangDAO;

@Service
public class SvBaiDang {
	
	@Autowired
	private BaiDangDAO mcd;
	
	public void insert(BaiDang a) {
		mcd.insert(a);
	}
	
//	public void update(DatVe a) {
//		mcd.update(a);
//	}
//	
//	public void updateStatus(String id, String status) {
//		mcd.updateStatus(id, status);
//	}
	
	public List<BaiDang> getAll() {
		return mcd.getAll();
	}
	
	public void delete(String id) {
		mcd.delete(id);
	}
	
	public BaiDang getById(String id) {
		return mcd.getById(id);
	}
	
}
