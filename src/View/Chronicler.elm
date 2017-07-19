module View.Chronicler exposing (..)

import Html exposing (..)
import Html.Lazy exposing (..)
import Msg exposing (..)
import Model as Main exposing (..)
import Component.Model exposing (..)
import Component.View.Component exposing (..)


view : Main.Model -> Html Msg
view model =
    let
        control =
            model.component
    in
        div []
            [ h1 [] [ lazy text "Chronicler" ]
            , div [] [ lazy component (newComponent 1 (Next Nothing Nothing)) ]
            , div [] [ lazy component (newComponent 2 (Text "World")) ]
            ]
