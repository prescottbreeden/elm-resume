module Main exposing (main)

import Browser
import Components.Icon exposing (icon)
import Constants.Icons exposing (..)
import Constants.Tech exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onCheck, onClick)
import Languages exposing (..)
import List.Extra exposing (elemIndex)
import Svg
import Svg.Attributes
import Types exposing (..)
import WorkExperience exposing (..)



-- utility functions


listIndex x xs =
    case elemIndex x xs of
        Just val ->
            " tools__appear--" ++ Debug.toString (val + 1)

        Nothing ->
            " tools__appear--0"


setTech : Action -> Msg
setTech active =
    { operation = active, data = "" }


toggleMenu : Msg
toggleMenu =
    { operation = ToggleMenu, data = "" }


toolsClass : ActiveTools -> Model -> String
toolsClass thing model =
    if model.activeTools == thing then
        "tools__nav tools__nav--active"

    else
        "tools__nav"



-- components


listItem : String -> Html Msg
listItem data =
    li [ class "box__text" ] [ text data ]


skillsBox : List String -> Html Msg
skillsBox data =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "skills" ]
        , ul []
            (List.map listItem data)
        ]



-- layouts


resumeHeader : Html Msg
resumeHeader =
    header [ class "header" ]
        [ div [ class "page__left-col--header" ]
            [ img
                [ class "header__logo"
                , src "https://www.amplifycp.com/wp-content/uploads/2020/11/Amplify-Consulting-Partners-Logo@3x.png"
                ]
                []
            ]
        , div [ class "header__primary" ]
            [ h1 [ class "header__name" ] [ text "Prescott Breeden" ]
            , span
                [ class "header__title" ]
                [ text "software development engineer" ]
            ]
        ]


contact : Html Msg
contact =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "contact" ]
        , p [ class "box__row box__link" ]
            [ icon "box__icon" envelopIcon
            , a
                [ class "box__text"
                , style "textDecoration" "none"
                , href "mailto:prescott@amplifycp.com"
                ]
                [ text "prescott@amplifycp.com"
                ]
            ]
        , p [ class "box__row box__link" ]
            [ icon "box__icon" linkedInIcon
            , a
                [ class "box__text"
                , style "textDecoration" "none"
                , href "https://www.linkedin.com/in/prescottbreeden/"
                , target "_blank"
                , rel "noreferrer"
                ]
                [ text "/in/prescottbreeden"
                ]
            ]
        ]


toolsBox : Model -> Html Msg
toolsBox model =
    div [ class "box" ]
        [ p [ class "box__title" ]
            [ text "Technology & Tools" ]
        , div
            [ class "tools" ]
            [ div [ class "tools__options" ]
                [ div
                    [ class (toolsClass FrontEnd model)
                    , onClick (setTech SetFrontEnd)
                    ]
                    [ text "Front End" ]
                , p
                    [ class (toolsClass BackEnd model)
                    , onClick (setTech SetBackEnd)
                    ]
                    [ text "Back End" ]
                , p
                    [ class (toolsClass Test model)
                    , onClick (setTech SetTest)
                    ]
                    [ text "Testing" ]
                , p
                    [ class (toolsClass Tools model)
                    , onClick (setTech SetDevTools)
                    ]
                    [ text "Dev Tools" ]
                ]
            , div [ class "tools__data" ]
                (List.map (\s -> p [ class ("tools__item" ++ listIndex s model.tools) ] [ text s ]) frontEnd
                    ++ List.map (\s -> p [ class ("tools__item" ++ listIndex s model.tools) ] [ text s ]) backEnd
                    ++ List.map (\s -> p [ class ("tools__item" ++ listIndex s model.tools) ] [ text s ]) testing
                    ++ List.map (\s -> p [ class ("tools__item" ++ listIndex s model.tools) ] [ text s ]) devtools
                )
            ]
        ]


role : WorkExperience -> Html Msg
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


navMenu : Model -> Html Msg
navMenu model =
    div [ class "navigation" ]
        [ input
            [ type_ "checkbox"
            , class "nav__checkbox"
            , checked model.menu
            ]
            []
        , label
            [ class "nav__button"
            , onClick toggleMenu
            ]
            [ span [ class "nav__icon" ] [] ]
        , div [ class "nav__background" ] []
        , nav [ class "nav__nav" ]
            [ ul [ class "nav__list" ]
                [ li [ onClick toggleMenu, class "nav__item" ]
                    [ icon "nav__cog" cogIcon
                    , p
                        [ class "nav__link"
                        ]
                        [ text "summary" ]
                    ]
                , li
                    [ onClick toggleMenu
                    , class "nav__item"
                    ]
                    [ icon "nav__cog " cogIcon
                    , p [ class "nav__link" ] [ text "Projects" ]
                    ]
                , li
                    [ onClick toggleMenu
                    , class "nav__item"
                    ]
                    [ icon "nav__cog " cogIcon
                    , p [ class "nav__link" ] [ text "All Experience" ]
                    ]
                , li
                    [ onClick toggleMenu
                    , class "nav__item"
                    ]
                    [ icon "nav__cog " cogIcon
                    , a
                        [ class "nav__link"
                        , href "http://prescottbreeden.com"
                        , target "_blank"
                        , rel "noreferrer"
                        ]
                        [ text "Visit My Website" ]
                    ]
                ]
            ]
        ]



-- [ UPDATE VIEW AND MAIN ]
-- changeConent : Msg


changeConent =
    Nothing


update : Msg -> Model -> Model
update msg model =
    case msg.operation of
        ToggleMenu ->
            { model
                | menu =
                    if model.menu == True then
                        False

                    else
                        True
            }

        ToggleModal ->
            { model
                | modal =
                    if model.modal == True then
                        False

                    else
                        True
                , modalLanguage =
                    case msg.data of
                        "C#" ->
                            csharp

                        "Common Lisp" ->
                            clisp

                        "Elm" ->
                            elm

                        "F#" ->
                            fsharp

                        "JavaScript" ->
                            javascript

                        "Python" ->
                            python

                        "Rust" ->
                            rust

                        "Scala" ->
                            scala

                        "TypeScript" ->
                            typescript

                        _ ->
                            csharp
            }

        SetBackEnd ->
            { model | activeTools = BackEnd, tools = backEnd }

        SetFrontEnd ->
            { model | activeTools = FrontEnd, tools = frontEnd }

        SetTest ->
            { model | activeTools = Test, tools = testing }

        SetDevTools ->
            { model | activeTools = Tools, tools = devtools }


initialModel : Model
initialModel =
    { activeTools = FrontEnd
    , currentView = Experience
    , experience = roles
    , language = ""
    , languages = languages
    , menu = False
    , modal = False
    , modalLanguage = javascript
    , skills = skills
    , tools = frontEnd
    }


summary model =
    div [ class "page__layout" ]
        [ div [ class "page__left-col" ]
            [ contact
            , skillsBox model.skills
            , languagesBox model.languages
            , toolsBox model
            ]
        , div [ class "page__right-col" ]
            [ div [ class "box" ]
                [ p [ class "box__title" ] [ text "TL;DR" ]
                , p [ class "summary__text" ] [ text "Passionate full-stack software developer with eight years of programming experience. Open-source contributor and author. Believes in life-long learning and that hot-sauce is a food group." ]
                ]
            , div [ class "box" ]
                [ p [ class "box__title" ] [ text "Technical Work Experience" ]
                , section [ class "experience--section" ]
                    (List.map role (List.filter (\e -> e.feature) model.experience))
                ]
            ]
        , navMenu model
        ]


pageSelect model =
    case model.currentView of
        Experience ->
            summary model

        Projects ->
            summary model

        _ ->
            summary model


view model =
    div [ class "page" ]
        [ resumeHeader
        , pageSelect model
        , footer [ class "footer" ]
            [ p [] [ text "Last Updated @ July 2021" ]
            , p [] [ text "Written in Elm" ]
            ]
        , modal model
        ]


main =
    Browser.sandbox { init = initialModel, update = update, view = view }
