module NextComponent.Model exposing (..)

import Common exposing (UID)


type alias Model =
    { text : Maybe String
    , linkId : Maybe UID
    }


newNextComponent : String -> UID -> Model
newNextComponent text linkId =
    { text = text
    , linkId = linkId
    }


model : Model
model =
    newNextComponent Nothing Nothing
