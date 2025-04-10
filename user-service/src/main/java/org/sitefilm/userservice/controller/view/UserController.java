package org.sitefilm.userservice.controller.view;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequiredArgsConstructor
@RequestMapping("/user/info")
public class UserController {

    @GetMapping
    public String index() {
        return "userInfoPage";
    }
}
