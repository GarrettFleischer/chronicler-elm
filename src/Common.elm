module Common exposing (..)

import Unique exposing (..)


type alias UID =
    Unique Id


type alias Strings =
    List String


type alias MString =
    Maybe String


type alias MUID =
    Maybe UID
