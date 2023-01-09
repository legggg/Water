package com.example.water_web.Controller;

import com.example.water_web.Service.MlrdService;
import com.example.water_web.Vo.MlrdVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/*")
public class MlrdController {

    @Autowired
    MlrdService service;

    // 기부 조회 페이지
    @GetMapping("/viewmlrd")
    public void getView(@RequestParam("n") int cntr_sn, Model model) throws Exception {
        MlrdVo viewmlrd = service.viewMlrd(cntr_sn);

        model.addAttribute("viewmlrd", viewmlrd);
    }
}
