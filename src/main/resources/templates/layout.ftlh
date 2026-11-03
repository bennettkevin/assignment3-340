<#macro page title active="">

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
        <link rel="stylesheet" href="./styles.css"/>
        <title>${title} | Character Database</title>
    </head>

    <body>
        <header>
            <div class="navbar">
                <a class="navbar-brand" href="home">Home</a>
                <a class="navbar-brand" href="about">About</a>
                <a class="navbar-brand" href="new-character-form">Add a character</a>
            </div>
        </header>

        <main class="container">
            <#nested>
        </main>

        <footer class="site-footer">Character Database &middot; Spring Boot MVC + FreeMarker</footer>
    </body>
</html>
</#macro>