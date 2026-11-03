<#import "layout.ftlh" as l>
<@l.page title="Home" active="index">
    <form>
        <div class="form-group row d-flex justify-content-center">
            <input class="form-control" id="search-input" type="search" placeholder="Search a Marvel Character...">
            <button class="btn btn-secondary" id="search-btn">Search</button>
        </div>
    </form>
    <div class="container row d-flex justify-content-center">
        <#list characters as char>
        <article class="card hero-card character-card">
          <a href="/character/${char.id?c}">
            <img class="card-img-top" src="./images/deadpool.jpeg"/>
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