package com.character_api.character;

import org.springframework.stereotype.Service;

import java.util.List;

@Service  
public class TvCharacterService {
    private final TvCharacterRepository repository;
    
    public TvCharacterService(TvCharacterRepository repository){
        this.repository = repository;
    }

  public List<TvCharacter> findAll() {
    return repository.findAll();
  }

  public List<TvCharacter> search(String name, String role){
    boolean hasName = name != null && !name.isBlank();
    boolean hasRole = name != null && !name.isBlank();

    if (hasName && role != null){
      return repository.findByNameContainingIgnoreCaseAndRole(name, role);
    }
    if (hasName) {
      return repository.findByNameContainingIgnoreCase(name);
    }
    if (hasRole){
      return repository.findByRoleContainingIgnoreCase(role);
    }
    return repository.findAll();
  }

  public TvCharacter findById(Long id) {
    return repository.findById(id).orElseThrow(() -> new TvCharacterNotFoundException(id));
  }

  public TvCharacter create(TvCharacter character){
    return repository.save(character);
  }

  public TvCharacter update(Long id, TvCharacter updated){
    TvCharacter current = findById(id);

    current.setName(updated.getName());
    current.setDescription(updated.getDescription());
    current.setUniverse(updated.getUniverse());
    return repository.save(current);
  }

  public void delete(Long id){
    findById(id);
    repository.deleteById(id);
  }
}
