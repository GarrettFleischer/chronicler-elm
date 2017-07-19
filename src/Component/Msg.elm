module Component.Msg exposing (..)

import Component.Model exposing (Component)
import Common exposing (UID)


type Msg
    = Update UID Component
