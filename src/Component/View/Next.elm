module Component.View.Next exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Msg as Main exposing (..)
import Component.Msg exposing (..)
import Component.Model exposing (..)
import Common exposing (UID)


view : Model -> Html Main.Msg
view model =
    case model.component of
        Next mString mUID ->
            let
                string =
                    case mString of
                        Just s ->
                            s

                        Nothing ->
                            ""
            in
                div [ class "next-component" ]
                    [ input
                        [ placeholder "Next"
                        , value string
                        ]
                        []
                    ]

        _ ->
            text ""
