module Element exposing (..)

import Html exposing (Html, text, div, img)
import Html.Attributes exposing (src)
import Msgs exposing (..)
import Model exposing (..)


---- UPDATE ----


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ img [ src "/logo.svg" ] []
        , div [] [ text "Your Elm App is working!" ]
        ]
