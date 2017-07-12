module Todo.Msg exposing (..)

import NextComponent.Model exposing (..)


type Msg
    = Text (Maybe String)
    | LinkId (Maybe UID)
