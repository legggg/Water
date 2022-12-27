package com.example.water_web.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

    @GetMapping("/main")
    public String mainPage() {
        return "main";
    }

    @GetMapping("/intro")
    public String introPage() {
        return "intro";
    }

    @GetMapping("/dona")
    public String toDona() {
        return "dona";
    }
    @GetMapping("/donaing")
    public String toDonaIng() {
        return "donaing";
    }
}
