package com.character_api.character;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;

@Entity
@Table(name = "tv_characters")
public class TvCharacter {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    private String name;

    @NotBlank
    private String description;

    @NotBlank
    private String universe;

    @NotBlank
    private String role;

    // Constructor
    public TvCharacter(){
    }

    // Getters 
    public Long getId(){
      return id;
    }

    public String getName(){
      return name;
    }

    public String getDescription(){
      return description;
    }

    public String getUniverse(){
      return universe;
    }

    public String getRole(){
      return role;
    }

    // Setters 
    public void setName(String name){
      this.name = name;
    }

    public void setDescription(String description){
      this.description  = description;
    }

    public void setUniverse(String universe){
      this.universe = universe;
    }
}
