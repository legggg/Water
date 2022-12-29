package com.example.water_web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    //관리자화면
    @GetMapping("/index")
    public void getIndex() throws Exception {

    }
}
