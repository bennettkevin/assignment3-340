package com.character_api.character;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.GetMapping;
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

}
