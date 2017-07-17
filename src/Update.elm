module Update exposing (update)

import Model exposing (..)
import Msg exposing (..)
import Component.Update as Component


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( updateModel msg model, updateCmd msg )


updateModel : Msg -> Model -> Model
updateModel msg model =
    { model
        | component = Component.update msg model.component
    }


updateCmd : Msg -> Cmd Msg
updateCmd msg =
    Cmd.batch
        [ Cmd.none
        ]
