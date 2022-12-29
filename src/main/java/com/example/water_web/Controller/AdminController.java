package com.example.water_web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/*")
public class AdminController {

    // 관리자 화면
    @GetMapping("/index")
    public void getIndex() throws Exception {

    }

    // 상품 등록
    @GetMapping("/indexregister")
    public void getDonasRegister() throws Exception {


    }
}
