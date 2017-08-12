package org.dccarlos.kafka.manager.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping(value = {"/", "/login", "/logout"})
    public String index() {
        return "index";
    }
}