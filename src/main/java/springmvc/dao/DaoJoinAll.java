package springmvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

@Service
public class DaoJoinAll {
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
//	public List<Object[]> joinAll() {
//		Session ss = sf.openSession();
//		List<Object[]> listObj = null;
//		try {
//			String hql = "SELECT  nd.hoTen, nd.email, nd.diaChi, nd.phone, "
//			        + "bd.danhMuc, bd.vungMien, bd.banLa, bd.banDangTin, bd.tinhTrang, "
//			        + "bd.diaChi, bd.dienTich, bd.huong, bd.tuaDe, bd.noiDung , bd.gia , bd.hinhAnh  "
//			        + "FROM NguoiDung nd  JOIN BaiDang bd ON kh = bd.nguoiDung ";
//			        
//			Query query = ss.createQuery(hql);
//			listObj = query.getResultList();
//		} catch (Exception e) {
//			e.printStackTrace();
//		} finally {
//			ss.close();
//		}
//		return listObj;
//	}
	

}
