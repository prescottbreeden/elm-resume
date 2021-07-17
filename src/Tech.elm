module Tech exposing (..)

import Types exposing (Language)


skills : List String
skills =
    [ "Software Architecture"
    , "Functional Programming"
    , "Accessibility . UX Design"
    , "Dynamic Styling . Animations"
    , "Data Validation . Authentication"
    , "REST . GraphQL . WebSockets"
    , "Data Access Layers . Microservices"
    , "Public Speaking . Mentoring"
    ]


frontEnd : List String
frontEnd =
    [ "Angular.io"
    , "Apollo Client"
    , "BEM"
    , "Canvas Animation"
    , "CSS"
    , "ES6"
    , "HTML"
    , "React "
    , "React Native"
    , "Redux"
    , "SASS (.scss)"
    , "Socket.io"
    , "SVG Animation"
    , "Webpack"
    ]


backEnd : List String
backEnd =
    [ "ASP.Net Core"
    , "Apollo Server"
    , "CosmoDB"
    , "Dapper"
    , "Django"
    , "Entity Framework"
    , "Express.js"
    , "Flask"
    , "MongoDB"
    , "Mongoose.js"
    , "MySQL"
    , "Node.js"
    , "OAuth"
    , "Redis"
    , "SQL Server"
    , "SQLite"
    ]


testing : List String
testing =
    [ "Cypress"
    , "DocTest"
    , "Enzyme"
    , "Istanbul"
    , "Jest"
    , "Mocha"
    , "PyTest"
    , "Python unittest"
    , "React Testing Library"
    , "Selenium"
    , "xUnit"
    ]


devtools : List String
devtools =
    [ "Automation"
    , "AWS Cloud"
    , "Azure Cloud"
    , "Azure DevOps"
    , "Bash Scripting"
    , "Docker"
    , "Git"
    , "GitHub"
    , "Linux"
    , "Miro"
    , "VIM"
    ]


tools : List String
tools =
    [ "ASP.Net Core"
    , "Angular.io"
    , "CosmoDB"
    , "Dapper"
    , "Docker"
    , "Entity Framework"
    , "Express.js"
    , "Flask"
    , "Git"
    , "JWT"
    , "Linux"
    , "MSSql Server"
    , "MongoDB"
    , "Mongoose"
    , "MySQL"
    , "Node"
    , "OAuth"
    , "React.js"
    , "Redis"
    , "Redux"
    , "Socket.io"
    , "VIM"
    ]


csharp : Language
csharp =
    { label = "C#"
    , interest = 2
    , skill = 8
    , blurb = "While I have taught and used C# for about 5 years, it is my least favorite language and I am hoping to replace my C# workflows with F#."
    }


clisp : Language
clisp =
    { label = "Common Lisp"
    , interest = 10
    , skill = 6
    , blurb = "Common Lisp is a fun, brainy, and powerful language that is a phenomenal teacher, even if rarely used in production (sad panda)."
    }


elm : Language
elm =
    { label = "Elm"
    , interest = 10
    , skill = 6
    , blurb = "I always get excited by an opporunity to build something in Elm."
    }


fsharp : Language
fsharp =
    { label = "F#"
    , interest = 9
    , skill = 3
    , blurb = "I am always eager for F# opporunities. It also has one of my favorite type systems."
    }


javascript : Language
javascript =
    { label = "JavaScript"
    , interest = 10
    , skill = 10
    , blurb = "JavaScript has been my daily-driver for about 5 years and its lispy-ness makes it one of my favorite languages."
    }


python : Language
python =
    { label = "Python"
    , interest = 8
    , skill = 9
    , blurb = "One of the first languages I learned, I have been building and teaching in Python on and off for 8 years."
    }


rust : Language
rust =
    { label = "Rust"
    , interest = 10
    , skill = 2
    , blurb = "Rust is the newest language I've begun learning. Its performance and multi-environment use makes it a powerful tool."
    }


scala : Language
scala =
    { label = "Scala"
    , interest = 6
    , skill = 5
    , blurb = "Scala was the first functional-first language I learned, and while I enjoy the language it has not had a lot of use in my workflows yet."
    }


typescript : Language
typescript =
    { label = "TypeScript"
    , interest = 8
    , skill = 8
    , blurb = "A favorite tool to add to a JavaScript project despite the lack of higher-kinded polymorphism."
    }


languages : List Language
languages =
    [ csharp
    , clisp
    , elm
    , fsharp
    , javascript
    , python
    , rust
    , scala
    , typescript
    ]
