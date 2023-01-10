package com.example.water_web.Controller;

import com.example.water_web.Service.DonaService;
import com.example.water_web.Service.MlrdService;
import com.example.water_web.Vo.DonaVo;
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
    MlrdService mlrdService;

    @Autowired
    DonaService service;

    // 기간 지난 기부 조회 페이지
    @GetMapping("/viewmlrd")
    public void getView(@RequestParam("n") int cntr_sn, Model model) throws Exception {
        List<MlrdVo> viewmlrd = mlrdService.viewMlrd(cntr_sn); // tb_mlrd 부분 가져옴
//        List<DonaVo> viewmlrd2 = mlrdService.viewMlrd2(vo); // tb_cntr이랑 tb_cntr_ctbny 부분 가져옴

        DonaVo view = service.donasView(cntr_sn);
        DonaVo view2 = service.magaDona(cntr_sn); // 현재 기부액 조회 + 기부율

        model.addAttribute("view", view);
        model.addAttribute("view2", view2);

        model.addAttribute("viewmlrd", viewmlrd);
//        model.addAttribute("viewmlrd2", viewmlrd2);
    }
}
