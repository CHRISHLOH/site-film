package org.sitefilm.adminservice.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/movies/admin")
public class AdminController {
    @GetMapping("")
    public String showUsersList() {
        return "movies";
    }
}
