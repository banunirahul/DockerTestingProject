package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping
    public String myApp(){
        String myApp = "Hello I am a java application";
        System.out.println(myApp);
        return myApp;
    }
}
