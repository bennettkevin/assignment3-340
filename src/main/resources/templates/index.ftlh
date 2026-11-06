<#import "layout.ftlh" as l>
<@l.page title="Home" active="index">
    <form method="get" action="/character/home">
        <div class="form-group row d-flex justify-content-center">
            <Label for="searchInput" class="text-warning">Search by Name:</Label>
            <input class="form-control mb-3" type="search" id="searchInput" name="name" placeholder="Character Name...">
            <Label for="roleInput" class="text-warning">Filter by Role:</Label>
            <input class="form-control mb-3" type="search" id="roleInput" name="role" placeholder="Character Role...">
            <button type="submit" class="btn btn-secondary" id="search-btn">Search</button>
        </div>
    </form>
    <div class="container row d-flex justify-content-center">
        <#list characters as char>
        <article class="card character-card ${(char.role?lower_case == 'hero') ? string('hero-card', 'villain-card')}">
          <a href="/character/${char.id?c}">
            <img class="card-img-top" src="${(char.imageUrl)!''}" alt="${char.name}"/>
          </a>
          <div class="card-body">
            <h3><a href="/character/${char.id?c}">${char.name}</a></h3>
            <p class="meta">Role ${char.role?lower_case?cap_first}</p>
            <p class="meta">Universe: ${char.universe}</p>
          </div>
        </article>
        <#else>
          <p class="empty">No characters found.</p>
      </#list>
    </div>
</@l.page>