package com.gradle.example.restcontroller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/employee")
public class EmployeeController {
   @GetMapping("/{id}")
    public String getEmp(String id){
        return "Hello Employee "+id;
    }
    @GetMapping("/{id}")
    public String getEmpsecond(String id){
        return "Hello Employee This is your second API";
    }
}
