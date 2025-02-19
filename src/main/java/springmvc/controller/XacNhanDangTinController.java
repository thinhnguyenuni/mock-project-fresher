package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.BaiDang;
import springmvc.dao.BaiDangDAO;
import springmvc.service.SvBaiDang;

@Controller

public class XacNhanDangTinController {

	@Autowired
	BaiDangDAO baiDangDAO;

	@PostMapping("/xac-nhan-dang-tin")
	public String xacnhandangtin() {
		return "xacnhandangtin";
	}

     @PostMapping("/luuthongtin")
     public String luuthongtin(@ModelAttribute("baidang") BaiDang baiDang ) {
    	 baiDangDAO.insert(baiDang);
    	 return "dangtinthanhcong";
     }
}
