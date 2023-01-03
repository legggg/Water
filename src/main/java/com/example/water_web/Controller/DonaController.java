package com.example.water_web.Controller;

import com.example.water_web.Service.DonaService;
import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.MakeDonaVo;
import com.fasterxml.jackson.annotation.JacksonInject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/*")
public class DonaController {

    @Autowired
    DonaService service;

    // 카테고리별 기부 리스트
    @GetMapping("/donainglist")
    public void getList(@RequestParam("c") int cntr_category, Model model) throws Exception {
        List<DonaVo> list = null;
        list = service.donainglist(cntr_category);

        model.addAttribute("donainglist", list);
    }

    // 기부 조회
    @GetMapping("/view")
    public void getView(@RequestParam("n") int cntr_sn, Model model) throws Exception {
        DonaVo view = service.donasView(cntr_sn);
        model.addAttribute("view", view);
    }

    // 기부하기
    @PostMapping("/view")
    public String postMakeDona(MakeDonaVo vo) throws Exception {
        service.makeDona(vo);

        return "redirect:/main";
    }
}
