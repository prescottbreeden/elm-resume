module Languages exposing (details, languagesBox, lineSvg, modal)

import Components.Icon exposing (icon)
import Constants.Icons exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onClick)
import Svg
import Svg.Attributes
import Types exposing (..)


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

        -- , div [ class "box__badge" ]
        --     [ img [ src "https://www.codewars.com/users/bobross1337/badges/small" ] []
        --     ]
        ]


details : Language -> Html Msg
details language =
    li [ class "details" ]
        [ div
            [ class "details__container"
            , onClick { operation = ToggleModal, data = language.label }
            ]
            [ p [ class "details__label" ] [ text language.label ]
            , div [ class "details__data" ]
                [ p [ class ("details__skill--" ++ String.fromInt language.skill) ] []
                , p [ class ("details__interest--" ++ String.fromInt language.interest) ] []
                ]
            ]
        ]


lineSvg language =
    section [ class "radial-chart" ]
        [ div [ class "radial-chart__row" ]
            [ p [ class "radial-chart__label radial-chart__icon--skill" ] [ text "Strength" ]
            , icon "radial-chart__icon radial-chart__icon--power" powerIcon
            , Svg.svg [ Svg.Attributes.class "radial-chart__svg" ]
                [ Svg.line
                    [ Svg.Attributes.x1 "0"
                    , Svg.Attributes.x2 (String.fromInt (language.skill * 50))
                    , Svg.Attributes.y1 "21"
                    , Svg.Attributes.y2 "21"
                    , Svg.Attributes.class "radial-chart__value"
                    ]
                    []
                ]
            ]
        , div [ class "radial-chart__row" ]
            [ p [ class "radial-chart__label" ] [ text "Interest" ]
            , icon "radial-chart__icon radial-chart__icon--heart" heartIcon
            , Svg.svg [ Svg.Attributes.class "radial-chart__svg" ]
                [ Svg.line
                    [ Svg.Attributes.x1 "0"
                    , Svg.Attributes.x2 (String.fromInt (language.interest * 50))
                    , Svg.Attributes.y1 "22"
                    , Svg.Attributes.y2 "22"
                    , Svg.Attributes.class "radial-chart__value--interest"
                    ]
                    []
                ]
            ]
        ]


modal : Model -> Html Msg
modal model =
    div
        [ class
            ("modal"
                ++ (if model.modal == False then
                        "--closed"

                    else
                        ""
                   )
            )
        ]
        [ div
            [ class
                ("modal__content"
                    ++ (if model.modal == False then
                            "--closed"

                        else
                            ""
                       )
                )
            ]
            [ Svg.svg
                [ onClick { operation = ToggleModal, data = "" }
                , Svg.Attributes.viewBox "0 0 32 32"
                , Svg.Attributes.class "modal__close"
                ]
                (List.map (\p -> Svg.path [ Svg.Attributes.d p ] []) closeIcon)
            , div [ class "modal__container" ]
                [ p [ class "modal__title" ] [ text model.modalLanguage.label ]
                , lineSvg model.modalLanguage
                ]
            ]
        ]
