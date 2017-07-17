module Common exposing (..)

import Uuid
import Random.Pcg exposing (Seed, initialSeed, step)


type alias UID =
    Uuid.Uuid


type alias Strings =
    List String


type alias MString =
    Maybe String


type alias MUID =
    Maybe UID
