<#import "layout.ftlh" as l>
<@l.page title="Details" active="details">
    <div class="card">
        <div class="card hero-card">
            <img class="card-img-top" src="./images/deadpool.jpeg"/>
            <div class="card-body">
                <h2 class="card-title">${char.name}</h2>
                <p class="card-text">Role: <b>${char.role}</b> <br>
                    Universe: <b>${char.universe}</b> <br>
                    Description:${char.description}</p>
            </div>
        </div>
    </div>
</@l.page>