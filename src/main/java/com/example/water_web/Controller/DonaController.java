package com.example.water_web.Controller;

import com.example.water_web.Service.DonaService;
import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.GatherDonaVo;
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

    // 전체 기부 리스트
    @GetMapping("/donainglistall")
    public void getListall(DonaVo vo, Model model) throws Exception {
        List<DonaVo> list = null;
        list = service.donainglistall(vo);

        model.addAttribute("donainglistall", list);
    }

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
        DonaVo view2 = service.magaDona(cntr_sn); // 현재 기부액 조회 + 기부율
//        DonaVo view3 = service.percent(cntr_sn);

        model.addAttribute("view", view);
        model.addAttribute("view2", view2);
//        model.addAttribute("view3", view3);
    }

    // 기부금 등록 + 기부금 모으기
    @PostMapping("/view")
    public String postMakeDona(MakeDonaVo vo, GatherDonaVo vo2) throws Exception {
        service.makeDona(vo);
        service.gatherDona(vo2);

        return "redirect:/main";
    }

    @GetMapping("/viewinputdona")
    public void getMakeDona(@RequestParam("n") int cntr_sn, Model model) throws Exception {
        DonaVo viewinput = service.donasView(cntr_sn);

        model.addAttribute("viewinput", viewinput);
    }

    @PostMapping("/viewinputdona")
    public String postMaGaDona(MakeDonaVo vo, GatherDonaVo vo2) throws Exception {
        service.makeDona(vo);
        service.gatherDona(vo2);

        return "redirect:/main";
    }
}
