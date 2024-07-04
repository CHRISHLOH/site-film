package org.sitefilm.contentservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.actordto.ActorDto;
import org.sitefilm.contentservice.dto.actordto.NewActorDto;
import org.sitefilm.contentservice.dto.actordto.UpdatedActorDto;
import org.sitefilm.contentservice.service.ActorContentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("content-api/actors")
public class ContentServiceActorController {
    private final ActorContentService service;

    @GetMapping()
    public ResponseEntity<List<ActorDto>> getAllActors() {
        List<ActorDto> actors = service.getAllActors();
        return ResponseEntity.ok(actors);
    }

    @GetMapping("/{id}")
    public ResponseEntity<ActorDto> getActorById(@PathVariable Long id) {
        ActorDto actorDto = service.getActorById(id);
        if (actorDto != null) {
            return ResponseEntity.ok(actorDto);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping("/create")
    public ResponseEntity<ActorDto> createActor(@RequestBody NewActorDto newActorDto, UriComponentsBuilder uriComponentsBuilder) {
        ActorDto createdActor = service.createActor(newActorDto);
        URI location = uriComponentsBuilder.path("/{id}")
                .buildAndExpand(createdActor.id())
                .toUri();
        return ResponseEntity.created(location).body(createdActor);
    }

    @PostMapping("/update")
    public ResponseEntity<UpdatedActorDto> updateActor(@RequestBody UpdatedActorDto updatedActorDto) {
        return ResponseEntity.ok(service.updateActor(updatedActorDto));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteActor(@PathVariable Long id) {
        try {
            service.deleteActor(id);
            return ResponseEntity.ok("User delete successfully");
        } catch (RuntimeException e) {
            return ResponseEntity.notFound().build();
        }
    }
}
