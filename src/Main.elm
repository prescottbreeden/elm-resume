module Main exposing (main)

import Browser
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import List.Extra exposing (elemIndex)
import Svg
import Svg.Attributes
import Tech exposing (..)
import WorkExperience exposing (..)


type alias Msg =
    { operation : String
    , data : String
    }


type ActiveTools
    = FrontEnd
    | BackEnd
    | Test
    | Tools


type Views
    = Overview
    | Projects
    | Technical
    | NonTechnical


linkedInIcon =
    [ "M29 0h-26c-1.65 0-3 1.35-3 3v26c0 1.65 1.35 3 3 3h26c1.65 0 3-1.35 3-3v-26c0-1.65-1.35-3-3-3zM12 26h-4v-14h4v14zM10 10c-1.106 0-2-0.894-2-2s0.894-2 2-2c1.106 0 2 0.894 2 2s-0.894 2-2 2zM26 26h-4v-8c0-1.106-0.894-2-2-2s-2 0.894-2 2v8h-4v-14h4v2.481c0.825-1.131 2.087-2.481 3.5-2.481 2.488 0 4.5 2.238 4.5 5v9z" ]


envelopIcon =
    [ "M29 4h-26c-1.65 0-3 1.35-3 3v20c0 1.65 1.35 3 3 3h26c1.65 0 3-1.35 3-3v-20c0-1.65-1.35-3-3-3zM12.461 17.199l-8.461 6.59v-15.676l8.461 9.086zM5.512 8h20.976l-10.488 7.875-10.488-7.875zM12.79 17.553l3.21 3.447 3.21-3.447 6.58 8.447h-19.579l6.58-8.447zM19.539 17.199l8.461-9.086v15.676l-8.461-6.59z" ]


cogIcon =
    [ "M29.181 19.070c-1.679-2.908-0.669-6.634 2.255-8.328l-3.145-5.447c-0.898 0.527-1.943 0.829-3.058 0.829-3.361 0-6.085-2.742-6.085-6.125h-6.289c0.008 1.044-0.252 2.103-0.811 3.070-1.679 2.908-5.411 3.897-8.339 2.211l-3.144 5.447c0.905 0.515 1.689 1.268 2.246 2.234 1.676 2.903 0.672 6.623-2.241 8.319l3.145 5.447c0.895-0.522 1.935-0.82 3.044-0.82 3.35 0 6.067 2.725 6.084 6.092h6.289c-0.003-1.034 0.259-2.080 0.811-3.038 1.676-2.903 5.399-3.894 8.325-2.219l3.145-5.447c-0.899-0.515-1.678-1.266-2.232-2.226zM16 22.479c-3.578 0-6.479-2.901-6.479-6.479s2.901-6.479 6.479-6.479c3.578 0 6.479 2.901 6.479 6.479s-2.901 6.479-6.479 6.479z"
    ]


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


icon : String -> List String -> Html Msg
icon className paths =
    Svg.svg [ Svg.Attributes.viewBox "0 0 32 32", Svg.Attributes.class className ]
        (List.map (\p -> Svg.path [ Svg.Attributes.d p ] []) paths)


listItem : String -> Html Msg
listItem data =
    li [ class "box__text" ] [ text data ]


details : Language -> Html Msg
details model =
    li [ class "details" ]
        [ div
            [ class "details__container"
            , onClick { operation = "OPEN", data = model.label }
            ]
            [ p [ class "details__label" ] [ text model.label ]
            , div [ class "details__data" ]
                [ p [ class ("details__skill--" ++ String.fromInt model.skill) ] []
                , p [ class ("details__interest--" ++ String.fromInt model.interest) ] []
                ]
            ]
        ]


skillsBox : List String -> Html Msg
skillsBox data =
    div [ class "box" ]
        [ p [ class "box__title" ] [ text "skills" ]
        , ul []
            (List.map listItem data)
        ]


languagesBox : List Language -> Html Msg
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


toolsClass : ActiveTools -> Model -> String
toolsClass thing model =
    if model.activeTools == thing then
        "tools__nav tools__nav--active"

    else
        "tools__nav"


setTech action =
    { operation = action, data = "" }


listIndex x xs =
    case elemIndex x xs of
        Just val ->
            " tools__appear--" ++ Debug.toString (val + 1)

        Nothing ->
            " tools__appear--0"


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
                    , onClick (setTech "FRONT_END")
                    ]
                    [ text "Front End" ]
                , p
                    [ class (toolsClass BackEnd model)
                    , onClick (setTech "BACK_END")
                    ]
                    [ text "Back End" ]
                , p
                    [ class (toolsClass Test model)
                    , onClick (setTech "TEST")
                    ]
                    [ text "Testing" ]
                , p
                    [ class (toolsClass Tools model)
                    , onClick (setTech "TOOLS")
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



-- [ UPDATE VIEW AND MAIN ]


update : Msg -> Model -> Model
update msg model =
    case msg.operation of
        "FRONT_END" ->
            { model | activeTools = FrontEnd, tools = frontEnd }

        "BACK_END" ->
            { model | activeTools = BackEnd, tools = backEnd }

        "TEST" ->
            { model | activeTools = Test, tools = testing }

        "TOOLS" ->
            { model | activeTools = Tools, tools = devtools }

        _ ->
            model


type alias Model =
    { language : String
    , skills : List String
    , languages : List Language
    , tools : List String
    , experience : List WorkExperience
    , activeTools : ActiveTools
    , currentView : Views
    }


initialModel : Model
initialModel =
    { language = ""
    , skills = skills
    , languages = languages
    , tools = frontEnd
    , experience = roles
    , activeTools = FrontEnd
    , currentView = Overview
    }


navMenu : Html Msg
navMenu =
    div [ class "navigation" ]
        [ input
            [ type_ "checkbox"
            , id "nav"
            , class "nav__checkbox"
            ]
            []
        , label
            [ for "nav"
            , class "nav__button"
            ]
            [ span [ class "nav__icon" ] [] ]
        , div [ class "nav__background" ] []
        , nav [ class "nav__nav" ]
            [ ul [ class "nav__list" ]
                [ li [ class "nav__item" ]
                    [ icon "nav__cog" cogIcon
                    , p [] [ text "Overview" ]
                    ]
                , li [ class "nav__item" ]
                    [ icon "nav__cog " cogIcon
                    , p [] [ text "Projects" ]
                    ]
                , li [ class "nav__item" ]
                    [ icon "nav__cog " cogIcon
                    , p [] [ text "All Experience" ]
                    ]
                ]
            ]
        ]


view model =
    div [ class "page" ]
        [ resumeHeader
        , div [ class "page__layout" ]
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
            , navMenu
            ]
        , footer [ class "footer" ]
            [ p [] [ text "Written in Elm" ]
            ]
        ]


main =
    Browser.sandbox { init = initialModel, update = update, view = view }
