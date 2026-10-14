package com.character_api.character;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TvCharacterRepository extends JpaRepository<TvCharacter, Long> {
    
    // Find by name
    List<TvCharacter> findByNameContainingIgnoreCase(String name);

    // Find by role 
    List<TvCharacter> findByRoleContainingIgnoreCase(String role);
    
    // Find by name and role
    List<TvCharacter> findByNameContainingIgnoreCaseAndRole(String name, String role);
}
