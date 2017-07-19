module Component.View.Component exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Msg as Main exposing (..)
import Component.Model as Component exposing (..)
import Component.View.Next as Next exposing (view)
import Component.View.Text as Text exposing (view)


-- let each component handle the model, and return empty text if not handled


component : Model -> Html Main.Msg
component model =
    div [ class "component" ]
        [ Next.view model
        , Text.view model
        ]
