module Main exposing (main)

import Html exposing (..)
import Html.Attributes exposing (..)


skills =
    [ "Software Architecture"
    , "Functional Programming"
    , "Accessibility . UX Design"
    , "Styling . Animations"
    , "Data Validation . Authentication"
    , "REST . GraphQL . WebSockets"
    , "Data Access Layers . Microservices"
    , "Public Speaking . Mentoring"
    ]


tools =
    [ "React . Angular"
    , "Node . Express . Flask . Dotnet"
    , "MySQL . PostgreSQL . MS Server"
    , "MongoDB . CosmoDB"
    , "Apollo Server . Apollo Client . urql"
    , "Mongoose . Entity . Dapper"
    , "Redis . Redux"
    , "Socket.io"
    , "OAuth . JWT"
    , "Linux . Git . Docker . VIM"
    ]


csharp =
    { label = "C#"
    , interest = 2
    , skill = 8
    }


clisp =
    { label = "Common Lisp"
    , interest = 10
    , skill = 4
    }


elm =
    { label = "Elm"
    , interest = 8
    , skill = 5
    }


fsharp =
    { label = "F#"
    , interest = 8
    , skill = 3
    }


javascript =
    { label = "JavaScript"
    , interest = 10
    , skill = 10
    }


python =
    { label = "Python"
    , interest = 8
    , skill = 9
    }


rust =
    { label = "Rust"
    , interest = 10
    , skill = 5
    }


scala =
    { label = "Scala"
    , interest = 6
    , skill = 5
    }


typescript =
    { label = "TypeScript"
    , interest = 8
    , skill = 8
    }


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


resumeHeader =
    header [ class "header" ]
        [ div [ class "page__left-col--header" ]
            -- [ img [ class "header__logo", src "http://prescottbreeden.com/static/media/p_logo5.e5530b58.png" ] []
            [ img [ class "header__logo", src "https://www.amplifycp.com/wp-content/uploads/2020/11/Amplify-Consulting-Partners-Logo@3x.png" ] []
            ]
        , div [ class "header__primary" ]
            [ h1 [ class "header__name" ] [ text "Prescott Breeden" ]
            , span
                [ class "header__title" ]
                [ text "software development engineer" ]
            ]
        ]


contact =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "contact" ]
        , p [ class "box__text" ] [ text "prescott@amplifycp.com" ]
        , p [ class "box__text" ] [ text "/in/prescottbreeden" ]
        ]


listItem data =
    li [ class "box__text" ] [ text data ]


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


skillsBox data =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "skills" ]
        , ul []
            (List.map listItem data)
        ]


languagesBox data =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "languages" ]
        , ul []
            (List.map details data)
        ]


toolsBox data =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "technical & tools" ]
        , ul []
            (List.map listItem data)
        ]


main =
    div [ class "page" ]
        [ resumeHeader
        , div [ class "page__layout" ]
            [ div [ class "page__left-col" ]
                [ contact
                , skillsBox skills
                , languagesBox languages
                , toolsBox tools
                ]
            , div [ class "box" ]
                [ div [ class "summary" ]
                    [ p [ class "box__title" ] [ text "professional summary" ]
                    , p [ class "summary__text" ] [ text "Passionate full-stack software developer with 8 years of programming\nexperience specializing in JavaScript, TypeScript, Node.js, React, REST APIs,\nSQL, noSQL, GraphQL, and sockets. Open-source contributor and author." ]
                    ]
                , div [ class "box" ]
                    [ div [ class "experience" ] [ text "dingo" ] ]
                ]
            ]
        ]
