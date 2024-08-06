package springmvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

import entity.BaiDang;

@Service
public class BaiDangDAO {
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public void insert(BaiDang datve) {
		Session ss = sf.openSession();
		Transaction tr = null;
		try {
			tr = ss.beginTransaction();
			ss.save(datve);
			tr.commit();
		} catch (Exception e) {
			if (tr != null) {
				tr.rollback();
			}
			e.printStackTrace();
		} finally {
			ss.close();
		}
	}
	

	
	public List<BaiDang> getAll() {
		Session ss = sf.openSession();
		List<BaiDang> list = null;
		try {
			String hql = "FROM BaiDang";
			Query query = ss.createQuery(hql);
			list = query.getResultList();
			if(list.size() == 0) {
				System.out.println("Hiện tại không có máy nào");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return list;
	}
	
	public void delete(String id) {
		Session ss = sf.openSession();
		Transaction tr = null;
		try {
			tr = ss.beginTransaction();
			BaiDang objData = ss.get(BaiDang.class, id);
			ss.delete(objData);
			tr.commit();
		} catch (Exception e) {
			if(tr != null) {
				tr.rollback();
			}
			e.printStackTrace();
		} finally {
			ss.close();
		}
	}
	
	public BaiDang getById(String id) {
		Session ss = sf.openSession();
		BaiDang objData =null;
		try {
			objData = ss.get(BaiDang.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return objData;
	}
	// first = (page - 1) * pageSize
	//.setFirstResult(0).setMaxResults(2)
}
