package com.example.Hello.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class PageController {

    @RequestMapping("/")
    public String login() {
        return "login";
    }

    @RequestMapping("/forget")
    public String forget(){
        return "forget";
    }

    @RequestMapping("/otp")
    public String otp(){ return "otp"; }

    @RequestMapping("/setpassword")
    public String setPassword(){ return "setpassword";}

    @RequestMapping("/main")
    public String main(){ return "main";}

    @RequestMapping("/about")
    public String about(){return "about";}

    @RequestMapping("/contact")
    public String contact(){return "contact";}

    @RequestMapping("/setting")
    public String setting(){return "setting";}
}
