module View.Chronicler exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Lazy exposing (..)
import Msg exposing (..)
import Model exposing (..)


view : Model -> Html Msg
view model =
    let
        control =
            model.component
    in
        div
            []
            [ lazy text "Chronicler" ]
