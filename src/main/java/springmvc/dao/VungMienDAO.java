package springmvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

import entity.VungMien;

@Service
public class VungMienDAO{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public void insert(VungMien customer) {
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
	

	
	public List<VungMien> getAll() {
		Session ss = sf.openSession();
		List<VungMien> list = null;
		try {
			String hql = "FROM VungMien";
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
			VungMien objData = ss.get(VungMien.class, id);
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
	
	public VungMien getById(String id) {
		Session ss = sf.openSession();
		VungMien objData =null;
		try {
			objData = ss.get(VungMien.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return objData;
	}
}
