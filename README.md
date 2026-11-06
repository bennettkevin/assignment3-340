# Assignment 3

# Character API

A REST API for fantasy characters, using a layered spring boot architecture. Data stored in PostgreSQL. 

## Data Model

**TvCharacter** (table 'tv_characters')

| Attribute | Type | Rules | Description |
|-----------|------|-------|-------------|
| id | Long | unique, not null | Identifier for the character |
| name | String | not blank | Name of the character |
| description | String | not blank | Description of the character. |
| universe | String | not blank | The universe the character is from. |
| role | String | not blank | The role the character plays (i.e. Hero\Villian) |

## API Reference 

**base path** '/api/characters'

| Method | Path | Description | Success |
|--------|------|-------------|---------|
| GET | /api/characters | Retrieves all characters from db. | 200 |
| GET | /api/characters/{id} | Retrive the character by id. | 200 |
| POST | /api/characters | Add a new character. | 201 | 
| PUT | /api/characters/{id} | Update the character by id. | 200 |
| DELETE | /api/characters/{id} | Delete a character by id. | 204 |

### Example request body (POST/PUT)

```
POST: /api/characters
Content-type: application/json

{
    "description" : "test description",
    "name" : "test name",
    "role" : "some role",
    "universe" : "some universe"
}
```

## Endpoint Reference 

**base path** '/character'

| Path | Description |
|------|-------------|
| /home | The homepage gallery of characters. |
| /about | A page with details about the site. |
| /{id} | A details page for each character. |
| /add | A page to add a new character to the database. | 
| /{id}/edit | A page to edit an existing character. |

## Deployed application 

Link to [/characters/home](https://assignment3-340-bk5y.onrender.com/character/home)

Note: This is hosted on the free tier of render therefore there is a small delay when the server hasn't recieved a request in ~15 minutes. This delay is due to the server being started back up as it spins down after a period of inactivity and should only take ~1-1.5 minutes.
