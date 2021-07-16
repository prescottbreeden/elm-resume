module Tech exposing (..)


type alias Language =
    { label : String
    , interest : Int
    , skill : Int
    }


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
    }


clisp : Language
clisp =
    { label = "Common Lisp"
    , interest = 10
    , skill = 6
    }


elm : Language
elm =
    { label = "Elm"
    , interest = 10
    , skill = 6
    }


fsharp : Language
fsharp =
    { label = "F#"
    , interest = 9
    , skill = 3
    }


javascript : Language
javascript =
    { label = "JavaScript"
    , interest = 10
    , skill = 10
    }


python : Language
python =
    { label = "Python"
    , interest = 8
    , skill = 9
    }


rust : Language
rust =
    { label = "Rust"
    , interest = 10
    , skill = 5
    }


scala : Language
scala =
    { label = "Scala"
    , interest = 6
    , skill = 5
    }


typescript : Language
typescript =
    { label = "TypeScript"
    , interest = 8
    , skill = 8
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
