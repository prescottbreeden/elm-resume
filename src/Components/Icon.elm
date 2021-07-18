module Components.Icon exposing (..)

import Html exposing (Html)
import Svg
import Svg.Attributes
import Types exposing (Msg)


icon : String -> List String -> Html Msg
icon className paths =
    Svg.svg [ Svg.Attributes.viewBox "0 0 32 32", Svg.Attributes.class className ]
        (List.map (\p -> Svg.path [ Svg.Attributes.d p ] []) paths)
