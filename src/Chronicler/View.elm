module View exposing (..)

import Html exposing (Html, div, text, img)
import Html.Attributes exposing (src)
import Models exposing (..)
import Msgs exposing (..)


view : Model -> Html Msg
view model =
    div []
        [ img [ src "/logo.svg" ] []
        , div [] [ text "Your Elm App is working!" ]
        ]
