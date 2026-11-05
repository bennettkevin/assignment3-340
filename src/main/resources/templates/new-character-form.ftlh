<#import "layout.ftlh" as l>
<@l.page title="New Character" active="new-character-form">
    
    <form method="post" action="${formaction}" enctype="multipart/form-data" class="form">

        <label for="name">Name:</label>
        <input class="form-control mb-3"type="text" id="name" name="name" value="${(char.name)! ''}" required> <br>

        <label for="role">Role:</label>
        <input class="form-control mb-3" type="text" id="role" name="role" value="${(char.role)! ''}" required> <br>

        <label for="universe">Universe:</label>
        <input class="form-control mb-3" type="text" id="universe" name="universe" value="${(char.universe)! ''}" required> <br>

        <label for="image">Image URL:</label>
        <input class="form-control mb-3" type="text" id="imageUrl" name="imageUrl" value="${(char.imageUrl)! ''}" > <br>

        <label for="description">Description:</label>
        <textarea class="form-control mb-3" id="description" name="description" required>${(char.description)! ''}</textarea> <br>

        <div class="actions">
            <button type="submit" class="btn btn-primary">Submit</button>
            <a href="/character/home" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</@l.page>
