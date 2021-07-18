module Constants.Projects exposing (..)

import Types exposing (Project)


deFormed : Project
deFormed =
    { name = "@De-Formed-Validations"
    , tech =
        [ "Node.js"
        , "React"
        , "TypeScript"
        ]
    , description = "@De-Formed Validations is an NPM library for creating modular, function-based validation schemas that are decoupled from their surrounding implementations. I wrote this package for a project with the Colorado Community College System that involved thousands of forms to manage all school, student, and grant data for the entire state. There simply was no decent composable validation solution that would allow for easy unit testing as well as re-use outside the context of forms (such asduring application submission pages). Currently the library has implementations for the validations in VanillaJS for Node applications and in React as a React Hook."
    }


myDevBuddy : Project
myDevBuddy =
    { name = "My Dev Buddy"
    , tech =
        [ "Electron.js"
        , "Node.js"
        , "React"
        , "SASS"
        , "TypeScript"
        ]
    , description = "My Dev Buddy is a desktop application to import tickets from Azure DevOps to create a manageable TODO list with time tracking functionality.  After several months working intensely with DevOps on a client project, I wanted a way to better track my work and efforts and was inspired to build this over a weekend. CSV files exported from Azure DevOps and dropped into the application to populate tickets with detailed information, such as ticket numbers, descriptions, and other meta data. I am currently working on expanding this into a Teams App for my company in my spare time."
    }


raidenProject : Project
raidenProject =
    { name = "Raiden Project"
    , tech =
        [ "Node.js"
        , "Webpack"
        , "TOML"
        , "TypeScript"
        ]
    , description = "Raiden Project is a clone of the classic arcade shooter, 'Raiden 2', implemented in JavaScript with HTML canvas to run in a browser. This project has two primary motivations: 1) practice JavaScript optimizations to draw thousands of objects while maintaining 60 frames-per-second, and 2) as a playground for trying out different patterns at a scale that does not handle inefficiencies. The third, and probably most crucial motivation, is that it is super fun to build. The application uses TOML files to generate enemy types, weapons, items, attack styles, and movement patterns. I am currently working on building out the first boss fight."
    }


shoutcastServer : Project
shoutcastServer =
    { name = "Shoutcast Server"
    , tech =
        [ "AllegroServe"
        , "Lisp"
        ]
    , description = "Shoutcast Server is a server written in Lisp using AllegroServe and includes an MP3 database written in Lisp, file IO, and ID3 parsing to create a server for MP3 streaming. My hope is to eventually deploy this server and connect it to a reskin of Spotify. While somewhat of an impractical personal project, Lisp has probably taught me more about programming than any other language and continues to find new lessons to teach me every time I pick it back up. Other projects in Lisp I have played around with include static websites, an HTML generation library, a SPAM filter, a unit-testing framework, a portable shell, and some really silly old-school text adventure games."
    }


slotify : Project
slotify =
    { name = "Slotify"
    , tech =
        [ "Apache"
        , "MySQL"
        , "PHP"
        , "SASS"
        , "jQuery"
        ]
    , description = "Slotify is a clone of Spotify in the form of a video-game soundtrack player that includes playlist creation, song/album saving, shuffle, repeat, option drop-down menus, share options, searchable content, and other standard spotify functionalities. This was a personal project inspired by a challenge to build a modern application in an old school way. While the end-product was terrific (so much that I had to take it down from its server because my friends and students were streaming so much audio), it definitely gave me a greater appreciation for more modern tooling."
    }


casino31 : Project
casino31 =
    { name = "Casino 31"
    , tech =
        [ "ASP.Net Core"
        , "C#"
        , "Elm"
        , "Express.js"
        , "F#"
        , "MongoDB"
        , "MySQL"
        , "Redis"
        , "TypeScript"
        ]
    , description = "Casino 31 is a card game for 1-6 players. Users can play with their friends, the AI computer, or even just watch the computer play against itself (a la War Games). This project started as a collaborative project when I was a student at Coding Dojo. Initially it was two servers, a C# with Razor web application that was fed playing cards from an API on a seperate express server. Ironically, the choice for a second server was due to a time constraint to get the project to production after hitting a bug in Razor not consistently updated card information after JavaScript updated the DOM.Years later, I revisited this project to use it as a playground for an idea I had for a client application. The Elm front-end communicates to an F# data access layer to have a rich Domain Driven Design and act as the hub for various microservices: user data, card data, and game logic. This is an ongoing personal project that has taught me many lessons and hardships of disparate tech stacks and microservices, however it's quite fun to hack at."
    }


ultimateFan : Project
ultimateFan =
    { name = "Ultimate Fan"
    , tech =
        [ "Django"
        , "Python"
        , "SASS"
        , "SQLite"
        , "jQuery"
        ]
    , description = "Ultimate Fan is a web app that challenges users on trivia questions scraped from the web using Python. The app offered data visualization for players to see how they stacked up across 10 different categories from kung fu to history. This project was created during my first hackathon. The biggest challenge was in generating triva questions by simply scouring wiki pages from various sources and then doing a search and replace to swap out the names (i.e. answers) with blank underscores. So if I was scraping a page that had .../michaeljackson/... in the url, it would search for text that included one instance of the name and then replace it with underscores. My focus was on the web-scraper and Django app and my parter focused on the data visualization. I later went back and used the project to apply some of the skills I learned with Sass to give it a much needed makeover."
    }


allProjects =
    [ deFormed
    , myDevBuddy
    , raidenProject
    , shoutcastServer
    , slotify
    , casino31
    , ultimateFan
    ]
