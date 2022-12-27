package com.example.water_web.Controller;

import com.example.water_web.Service.DonaService;
import com.example.water_web.Vo.DonaVo;
import com.fasterxml.jackson.annotation.JacksonInject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/*")
public class DonaController {

    @Autowired
    DonaService service;

//    @GetMapping("/dona")
//    public String toDona() {
//        return "dona";
//    }

    // 카테고리별 상품 리스트
    @GetMapping("/list")
    public void getList(@RequestParam("c") int cntr_category, Model model) throws Exception {
        List<DonaVo> list = null;
        list = service.list(cntr_category);

        model.addAttribute("list", list);
    }
}
