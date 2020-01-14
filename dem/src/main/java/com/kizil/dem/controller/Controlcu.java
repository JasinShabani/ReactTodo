package com.kizil.dem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class controlcu {


    @ResponseBody
    @RequestMapping("/home")
    public String hello(){
        return "mrb";
    }

    @RequestMapping
    public String welcome(){
        return "girisbasarili";
    }
}
