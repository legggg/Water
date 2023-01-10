package com.example.water_web.Controller;

import com.example.water_web.Service.DonaService;
import com.example.water_web.Service.MlrdService;
import com.example.water_web.Vo.ComtVo;
import com.example.water_web.Vo.DonaVo;
import com.example.water_web.Vo.MlrdVo;
import com.example.water_web.Vo.UserVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/*")
public class MlrdController {

    @Autowired
    MlrdService mlrdService;

    @Autowired
    DonaService Donaservice;

    // 기간 지난 기부 조회 페이지 + 댓글 조회
    @GetMapping("/viewmlrd")
    public void getView(@RequestParam("n") int cntr_sn, Model model) throws Exception {

        List<MlrdVo> viewmlrd = mlrdService.viewMlrd(cntr_sn); // tb_mlrd 가져옴

        DonaVo view = Donaservice.donasView(cntr_sn); // tb_cntr, tb_cntr_ctbny 가져옴
        DonaVo view2 = Donaservice.magaDona(cntr_sn); // percent 가져옴

        model.addAttribute("viewmlrd", viewmlrd);

        model.addAttribute("view", view);
        model.addAttribute("view2", view2);

        // 댓글 조회
        List<ComtVo> comt = mlrdService.comtList(cntr_sn);
        model.addAttribute("comt", comt);
    }

    // 댓글 작성
    @PostMapping("/viewmlrd")
    public String comtRegist(ComtVo comt, HttpSession session) throws Exception {

        UserVo user = (UserVo) session.getAttribute("user");
        comt.setMbr_sn(user.getMbr_sn());

        mlrdService.comtRegist(comt);

        return "redirect:/main";
    }
}
