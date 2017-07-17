module Model exposing (..)

import Component.Model as Component
import Msg exposing (..)


type alias Model =
    { component : Component.Model
    }


initialModel : Model
initialModel =
    { component = Component.model
    }


init : ( Model, Cmd Msg )
init =
    initialModel ! []
