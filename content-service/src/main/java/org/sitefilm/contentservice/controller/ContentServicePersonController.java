package org.sitefilm.contentservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.main.person.FullPersonDto;
import org.sitefilm.contentservice.service.PersonContentService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("content-api/persons")
public class ContentServicePersonController {
    private final PersonContentService service;

//    @GetMapping("/{id}")
//    public FullPersonDto findPersonById(@PathVariable Long id) {
//        return service.findPersonById(id);
//    }
}
