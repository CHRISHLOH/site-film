package org.sitefilm.userservice.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {
    @GetMapping("/login/page")
    public String login() {
        return "loginTest2";
    }
}
