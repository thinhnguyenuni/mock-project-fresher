package springmvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

import entity.DanhMuc;

@Service
public class DanhMucDAO{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public void insert(DanhMuc customer) {
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
	

	
	public List<DanhMuc> getAll() {
		Session ss = sf.openSession();
		List<DanhMuc> list = null;
		try {
			String hql = "FROM DanhMuc";
			Query query = ss.createQuery(hql);
			list = query.getResultList();
			if(list.size() == 0) {
				System.out.println("Hiện tại không có danh mục nào");
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
			DanhMuc objData = ss.get(DanhMuc.class, id);
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
	
	public DanhMuc getById(String id) {
		Session ss = sf.openSession();
		DanhMuc objData =null;
		try {
			objData = ss.get(DanhMuc.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return objData;
	}
}
