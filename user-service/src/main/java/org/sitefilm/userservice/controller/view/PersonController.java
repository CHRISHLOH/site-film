package org.sitefilm.userservice.controller.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PersonController {

    @GetMapping("/person/{id}")
    public String getPersonPage(){
        return "personPage";
    }
}
