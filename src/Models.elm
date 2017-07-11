module Models exposing (..)

-- import RemoteData exposing (WebData)

import Unique exposing (..)


type alias Model =
    { route : Route
    , base : Component
    }


type Route
    = NodesRoute
    | NodeRoute NodeId
    | NotFoundRoute


type LinkType
    = NORMAL
    | DISABLE
    | HIDE
    | ALLOW


type alias NodeId =
    Unique Id


type alias Variable =
    Maybe String


type alias Actions =
    List Action


type alias Components =
    List Component


type alias Links =
    List Link


type alias Strings =
    List String


type Operator
    = Eq
    | Plus
    | Minus
    | Times
    | Divide
    | FairPlus
    | FairMinus


type Link
    = Link LinkType String NodeId Actions
    | IfLink String String NodeId Actions


type Action
    = Next String NodeId
    | Text String
    | Choice Links
    | FakeChoice Strings NodeId
    | Create Variable String
    | Temp Variable String
    | Set Variable Operator String
    | If String Actions Actions
    | Label NodeId String
    | Goto NodeId
    | Gosub NodeId
    | GosubScene NodeId NodeId


type Component
    = Base Components
    | Scene NodeId String Components
    | Node NodeId Int Int String Actions


scene : String -> Components -> Component
scene name components =
    Scene Unique.unique name components


node : Int -> Int -> String -> Actions -> Component
node x y label actions =
    Node Unique.unique x y label actions


label : String -> Action
label name =
    Label Unique.unique name


initialModel : Route -> Model
initialModel route =
    { route = route
    , base = Base []
    }
