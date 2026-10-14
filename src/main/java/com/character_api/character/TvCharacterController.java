package com.character_api.character;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;

import java.util.List;

@RestController
@RequestMapping("/api/characters")
public class TvCharacterController {
  
  private final TvCharacterService service;

  public TvCharacterController(TvCharacterService service){
    this.service = service;
  }

  @GetMapping
  public List<TvCharacter> list(@RequestParam(required = false) String name, @RequestParam(required = false) String role) {
    return service.search(name, role);
  }
  
  @GetMapping("/{id}")
  public TvCharacter get(@PathVariable Long id) {
    return service.findById(id);
  }

  @PostMapping
  @ResponseStatus(HttpStatus.CREATED)
  public TvCharacter create(@Valid @RequestBody TvCharacter character){
    return service.create(character);
  }

  @PutMapping("/{id}")
  public TvCharacter updte(@PathVariable Long id, @Valid @RequestBody TvCharacter character) {
    return service.update(id, character);
  }

  @DeleteMapping("/{id}")
  @ResponseStatus(HttpStatus.NO_CONTENT)
  public void delete(@PathVariable Long id){
    service.delete(id);
  }

}
