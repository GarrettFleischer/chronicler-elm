module Main exposing (..)

import Html exposing (Html)
import Model exposing (..)
import Msg exposing (..)
import View.Chronicler exposing (..)
import Update exposing (..)


-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view
        , init = init
        , update = update
        , subscriptions = subscriptions
        }
