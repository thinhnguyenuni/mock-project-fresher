package springmvc.dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Service;

import entity.NguoiDung;

@Service
public class NguoiDungDAO{
	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	
	public void insert(NguoiDung customer) {
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
	

	
	public List<NguoiDung> getAll() {
		Session ss = sf.openSession();
		List<NguoiDung> list = null;
		try {
			String hql = "FROM NguoiDung";
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
			NguoiDung objData = ss.get(NguoiDung.class, id);
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
	
	public NguoiDung getById(String id) {
		Session ss = sf.openSession();
		NguoiDung objData =null;
		try {
			objData = ss.get(NguoiDung.class, id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			ss.close();
		}
		return objData;
	}
}
