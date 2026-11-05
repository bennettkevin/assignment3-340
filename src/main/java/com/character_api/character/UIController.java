package com.character_api.character;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller 
@RequestMapping ("/character")
public class UIController {

    private final TvCharacterService service;

    public UIController(TvCharacterService service){
        this.service = service;
    }

    @GetMapping("/home")
    public String index(Model model){
        model.addAttribute("characters", service.findAll());
        return "index";
    }

    @GetMapping("/about")
    public String about(){
        return "about";
    }

    @GetMapping("/{id}")
    public String details(@PathVariable Long id, Model model){
        TvCharacter character = service.findById(id);

        model.addAttribute("char", character);

        return "details";
    }

    @GetMapping("/add")
    public String addCharacter(Model model){
        TvCharacter character = new TvCharacter();
        model.addAttribute("char", character);
        model.addAttribute("formaction", "/character/new");
        return "new-character-form";
    }

    @PostMapping("/new")
    public String saveCharacter(TvCharacter character){
        TvCharacter savedCharacter = service.create(character);
        return "redirect:/character/" + savedCharacter.getId();
    }

    @GetMapping("/{id}/edit")
    public String editCharacter(@PathVariable Long id, Model model){
        TvCharacter character = service.findById(id);
        model.addAttribute("char", character);
        model.addAttribute("formaction", "/character/" + id + "/update");
        return "new-character-form";
    }

    @PostMapping("/{id}/update")
    public String updateCharacter(@PathVariable Long id, TvCharacter character){
        TvCharacter updatedCharacter = service.update(id, character);
        return "redirect:/character/" + updatedCharacter.getId();
    }
}
