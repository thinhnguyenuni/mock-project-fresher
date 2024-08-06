package springmvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

import entity.LoaiTin;

@Service
public class LoaiTinDAO{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public void insert(LoaiTin customer) {
		Session ss = sf.openSession();
		Transaction tr = null;
		try {
			tr = ss.beginTransaction();
			ss.save(customer);
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
	

	
	public List<LoaiTin> getAll() {
		Session ss = sf.openSession();
		List<LoaiTin> list = null;
		try {
			String hql = "FROM LoaiTin";
			Query query = ss.createQuery(hql);
			list = query.getResultList();
			if(list.size() == 0) {
				System.out.println("Hiện tại không có khách nào");
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
			LoaiTin objData = ss.get(LoaiTin.class, id);
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
	
	public LoaiTin getById(String id) {
		Session ss = sf.openSession();
		LoaiTin objData =null;
		try {
			objData = ss.get(LoaiTin.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return objData;
	}
}
