package springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import springmvc.dao.DaoJoinAll;

@Service
public class SvJoinAll {
	@Autowired
	private DaoJoinAll dja;

//	public List<Object[]> joinAll() {
//		return dja.joinAll();
//	}
//	public List<Object[]> joinAll(String a) {
//		return dlx.joinAll(a);
//	}
//	public List<Object[]> joinAlltotal() {
//		return dlx.joinAlltotal();
//	}
}
