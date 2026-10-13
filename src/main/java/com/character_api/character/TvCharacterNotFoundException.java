package com.character_api.character;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class TvCharacterNotFoundException extends RuntimeException {
    public TvCharacterNotFoundException(Long id) {
      super("Character " + id + " not found.");
    }
}
