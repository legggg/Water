package com.example.water_web.Controller;

import com.example.water_web.Service.AdminService;
import com.example.water_web.Vo.CtgryVo;
import com.example.water_web.Vo.DonaVo;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/*")
public class AdminController {

    @Autowired
    AdminService adminService;

    // 관리자화면
    @GetMapping("/index")
    public void getIndex() throws Exception {

    }

    // 상품등록 페이지
    @GetMapping("/indexregister")
    public void getDonasRegister(Model model) throws Exception {
        List<CtgryVo> ctgry = null;
        ctgry = adminService.ctgry();
        model.addAttribute("ctgry", JSONArray.fromObject(ctgry));
    }

    // 상품등록
    @PostMapping("/indexregister")
    public String postDonasRegister(DonaVo vo) throws Exception {
        adminService.register(vo);

        return "redirect:/index";
    }


}
