module Component.View.Component exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Msg as Main exposing (..)
import Component.Model as Component exposing (..)


component : Model -> Html Main.Msg
component model =
    case model.component of
        Component.Next string _ ->
            text ""

        Component.Text string ->
            text ""

        Component.Choice links ->
            text ""

        Component.FakeChoice strings _ ->
            text ""

        Component.Create var value ->
            text ""

        Component.Temp var value ->
            text ""

        Component.Set var op string ->
            text ""

        Component.If condition success fail ->
            text ""

        Component.Label string ->
            text ""

        Component.Goto _ ->
            text ""

        Component.Gosub _ ->
            text ""

        Component.GosubScene _ _ ->
            text ""
