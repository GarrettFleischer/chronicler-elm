module Component.View.Text exposing (..)

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
        Text string ->
            div [ class "text-component" ]
                [ input
                    [ placeholder "Story text"
                    , value string
                    , onInput (\s -> updateModel model.id s)
                    ]
                    []
                ]

        _ ->
            text ""


updateModel : UID -> String -> Main.Msg
updateModel uid string =
    Main.MsgForComponent (Update uid (Text string))
