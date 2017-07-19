module Component.Update exposing (..)

import Msg as Main exposing (..)
import Component.Model exposing (Model, newComponent)
import Component.Msg as Component exposing (..)


update : Main.Msg -> Model -> Model
update msgFor model =
    case msgFor of
        MsgForComponent msg ->
            updateComponent msg model

        _ ->
            model


updateComponent : Component.Msg -> Model -> Model
updateComponent msg model =
    case msg of
        Update uid component ->
            if uid == model.id then
                { model | component = component }
            else
                model
