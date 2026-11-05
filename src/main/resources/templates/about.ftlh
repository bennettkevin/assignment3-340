<#import "layout.ftlh" as l>
<@l.page title="About" active="about">

    <div class="flex-column">
        <h1>About</h1>
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTeIckXqrLLxlKwjVNhI5uPooPxxWYwPcGWHFo9YM9w1Q&s=10" alt="Marvel Logo"/>
        <h3>Why this theme?</h3>
        <p>The marvel universe is interesting to me. I enjoy the heroes and vilians and story telling
            that is done. I play a game called marvel Rivals which is mostly what the theme of this site
            is based on. Hero cards backed with a nice marvel blue, and villians with the sinister red. 
            We have a lightly colored blend of villian and heroe colors for a navbar background. With a white
            background for all images to make the character portraits stand out. Suttle grey as our main content
            background to wrap all the colors together in something thats not to harsh on the eyes and expresses the 
            importance of each digestable piece of content. 
        </p>
        <h3>Design Choices</h3>
        <p>You will notice on the character page I chose a card styling. This is because in my
            head characters are easier to digest in a card format. I think of it as trading cards
            being laid out so users can view them. I tried to add emphesis on important items such as
            role and universe. These are extremely important when thinking about a team layout and ensuring
            you have a character for important roles.
        </p>
        <h3>Bio</h3>
        <p>This is a site designed for people who enjoy the marvel universe and want to learn more 
            about individual characters. I personally enjoy knowing details about characters and especially
            in the sense of the game it brings them to life a little bit more.
        </p>
        <h3>Site Technology Stack and Functionality</h3>
        <p>This site is built using spring boot with freemarker templates. The frontend works on a layout with a macro to load each 
            page through the layout page. The frontend communicates to the backend through a controller that handles
            requests and responses. The controller that the frontend interacts with specifically handles the UI, meaning the frontend
            reaches out to the ui controller and the ui controller uses a service to reach out to the database. So, the service works
            as a middle man between the controller and the database communication. There is another layer called repositories that 
            specifically handle the database interactions. There are also api endpoints built in using there own controllers. 
            These endpoints are used to send and recieve data in json format. 
        </p>
    </div>

</@l.page>