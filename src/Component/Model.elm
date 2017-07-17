module Component.Model exposing (..)

import Unique exposing (..)
import Common exposing (..)


type alias Model =
    { id : UID
    , component : Component
    }


type alias Components =
    List Component


type alias Links =
    List Link


type Variable
    = Variable UID String


type Operator
    = Eq
    | Plus
    | Minus
    | Times
    | Divide
    | FairPlus
    | FairMinus


type LinkType
    = NORMAL
    | DISABLE
    | HIDE
    | ALLOW


type Link
    = Link LinkType String MUID Components
    | IfLink String String MUID Components


type Component
    = Next MString MUID
    | Text String
    | Choice Links
    | FakeChoice Strings MUID
    | Create Variable String
    | Temp Variable String
    | Set Variable Operator String
    | If String Components Components
    | Label String
    | Goto MUID
    | Gosub MUID
    | GosubScene MUID MUID


newComponent : Component -> Model
newComponent component =
    { id = Unique.unique, component = component }


model : Model
model =
    newComponent (Text "")
