<#import "layout.ftlh" as l>
<@l.page title="Details" active="details">
    <div class="card">
        <div class="card ${(char.role?lower_case == 'hero') ? string('hero-card', 'villain-card')}">
            <img class="card-img-top" src="${(char.imageUrl)! ''}" alt="${char.name}">
            <div class="card-body">
                <h2 class="card-title">${char.name}</h2>
                <p class="card-text">Role: <b>${char.role}</b> <br>
                    Universe: <b>${char.universe}</b> <br>
                    Description:${char.description}</p>
                <a href="/character/${char.id}/edit" class="btn btn-primary">Edit</a>
            </div>
        </div>
    </div>
</@l.page>