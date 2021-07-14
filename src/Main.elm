module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)


type alias WorkExperience =
    { org : String
    , role : String
    , date : String
    , description : String
    , accomplishments : List String
    , tech : List String
    }


type alias Language =
    { label : String
    , interest : Int
    , skill : Int
    }


azure : WorkExperience
azure =
    { org = "Microsoft Azure AI (via AmplifyCP)"
    , role = "Lead UX/UI Software Engineer"
    , date = "May 2021 - July 2021"
    , description = "Leading developers, designers and data engineers in Europe, India, South America, NZ, and US across several projects to showcase demos of Microsoft Azure AI technology to solve real-world problems for different sects of industry."
    , accomplishments =
        [ "Refactored five React apps into a single TOML configurable app"
        , "Wrote automated scripts to speed up development pain-points"
        , "Performance optimized Azure Media and Power BI embeds"
        , "Removed redundant or broken code with reusable abstractions"
        , "Managed deployment and production environments for all apps"
        , "Set scope and priorities for multiple international teams"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "React", "Redux", "TOML", "TypeScript" ]
    }


pot : WorkExperience
pot =
    { org = "Port of Tacoma (via AmplifyCP)"
    , role = "Lead Full-stack Software Engineer"
    , date = "March 2021 - Present"
    , description = "Overhauling and updating various services for the Port of Tacoma, including new solutions that integrate with legacy APIs."
    , accomplishments =
        [ "Building and maintaining Express servers to replace outdated legacy services in their data pipeline"
        , "Designed Socket.io architecture for real-time data requirements"
        , "Created performance dashboards for new APIs with React"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "React", "JavaScript", "Socket.io", "SQL Server" ]
    }


colorado : WorkExperience
colorado =
    { org = "Colorado Community College System (via AmplifyCP)"
    , role = "Full-stack Software Engineer"
    , date = "August 2019 - Present"
    , description = "Ongoing project that replaced five 15+ year-old web applications with a single, cloud-based, solution."
    , accomplishments =
        [ "Built reusable React components in Typescript"
        , "Built tests with React Testing-Library and Enzyme"
        , "Developed standards for React, Redux and SASS architecture"
        , "Built controllers and endpoints with C# and ASP.net Core"
        , "Wrote SQL Queries for reporting and data collection features"
        , "Created open-source solutions for technical requirements"
        , "Provided ongoing support and feature work"
        , "Partnered with business and technical teammates on requirements, design, and technical delivery of solutions"
        ]
    , tech = [ "React", "TypeScript", "Redux", "SASS", "C#", "SQL Server", "ASP.Net Core", "Entity Framework" ]
    }


roles : List WorkExperience
roles =
    [ azure
    , pot
    , colorado
    ]


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
    , "BEM"
    , "Canvas & SVG Animation"
    , "HTML5 / CSS3 / ES6"
    , "jQuery"
    , "React / React Native"
    , "Redux"
    , "SASS (scss)"
    , "Socket.io"
    ]


backEnd : List String
backEnd =
    [ "ASP.Net Core"
    , "Django"
    , "Express.js"
    , "Flask"
    , "Node.js"
    , "OAuth"
    , "Socket.io"
    ]


databases : List String
databases =
    [ "CosmoDB"
    , "MongoDB"
    , "MySQL"
    , "Redis"
    , "SQL Server"
    ]


orms : List String
orms =
    [ "Dapper"
    , "Entity Framework"
    , "Mongoose.js"
    , "SQL Alchemy"
    , "TypeORM"
    ]


devtools : List String
devtools =
    [ "Automation"
    , "AWS Cloud"
    , "Azure Cloud"
    , "Bash"
    , "DevOps"
    , "Docker"
    , "Git"
    , "GitHub"
    , "Jira"
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



-- [ HTML snippets ]
-- [ img [ class "header__logo", src "http://prescottbreeden.com/static/media/p_logo5.e5530b58.png" ] []


resumeHeader : Html msg
resumeHeader =
    header [ class "header" ]
        [ div [ class "page__left-col--header" ]
            [ img [ class "header__logo", src "https://www.amplifycp.com/wp-content/uploads/2020/11/Amplify-Consulting-Partners-Logo@3x.png" ] []
            ]
        , div [ class "header__primary" ]
            [ h1 [ class "header__name" ] [ text "Prescott Breeden" ]
            , span
                [ class "header__title" ]
                [ text "software development engineer" ]
            ]
        ]


contact : Html msg
contact =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "contact" ]
        , p [ class "box__text" ] [ text "prescott@amplifycp.com" ]
        , p [ class "box__text" ] [ text "/in/prescottbreeden" ]
        ]



-- [ Helper Functions ]


listItem : String -> Html msg
listItem data =
    li [ class "box__text" ] [ text data ]


details : Language -> Html msg
details data =
    li [ class "details" ]
        [ div [ class "details__container" ]
            [ p [ class "details__label" ] [ text data.label ]
            , div [ class "details__data" ]
                [ p [ class ("details__skill--" ++ String.fromInt data.skill) ] []
                , p [ class ("details__interest--" ++ String.fromInt data.interest) ] []
                ]
            ]
        ]


skillsBox : List String -> Html msg
skillsBox data =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "skills" ]
        , ul []
            (List.map listItem data)
        ]


languagesBox : List Language -> Html msg
languagesBox data =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "languages" ]
        , ul []
            (List.map details data)
        , div [ class "legend" ]
            [ div [ class "legend__key" ]
                [ div [ class "legend__color legend__color--skill" ] []
                , p [ class "legend__text" ] [ text "Skill" ]
                ]
            , div [ class "legend__key" ]
                [ div [ class "legend__color legend__color--interest" ] []
                , p [ class "legend__text" ] [ text "Interest" ]
                ]
            ]
        ]


toolsBox : List String -> Html msg
toolsBox data =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "technical & tools" ]
        , div []
            (List.map (\s -> p [ class "highlight" ] [ text s ]) data)
        ]


role : WorkExperience -> Html msg
role data =
    div [ class "experience" ]
        [ p [ class "experience__role" ] [ text data.role ]
        , p [ class "experience__org" ] [ text data.org ]
        , p [ class "experience__date" ] [ text data.date ]
        , p [ class "experience__description" ] [ text data.description ]
        , ul [ class "experience__accomplishment-list" ]
            (List.map
                (\a ->
                    li [ class "experience__accomplishment-item" ]
                        [ span [ class "experience__accomplishment-text" ] [ text a ] ]
                )
                data.accomplishments
            )
        ]



-- [ UPDATE VIEW AND MAIN ]


update msg model =
    model


view model =
    div [ class "page" ]
        [ resumeHeader
        , div [ class "page__layout" ]
            [ div [ class "page__left-col" ]
                [ contact
                , skillsBox skills
                , languagesBox languages
                , toolsBox tools
                ]
            , div [ class "page__right-col" ]
                [ div [ class "box" ]
                    [ p [ class "box__title" ] [ text "TL;DR" ]
                    , p [ class "summary__text" ] [ text "Passionate full-stack software developer with eight years of programming experience. Open-source contributor and author. Believes in life-long learning and that hot-sauce is a food group." ]
                    ]
                , div [ class "box" ]
                    [ p [ class "box__title" ] [ text "Technical Work Experience" ]
                    , section [ class "experience--section" ]
                        (List.map role roles)
                    ]
                ]
            ]
        , footer [ class "footer" ]
            [ p [] [ text "Powered by Elm" ]
            ]
        ]


main =
    Browser.sandbox { init = 0, update = update, view = view }
