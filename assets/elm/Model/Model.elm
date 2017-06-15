module Model.Model exposing (..)

import Navigation
import Routing exposing (Route(..))
import Types.Types as Types exposing (Flags, PainPoint, Uni(..))


type alias Model =
    { currRoute : Route
    , painPoints : List PainPoint
    , uni : Uni
    }


initModel : Model
initModel =
    { currRoute = PPsRoute -- TODO: get requested url
    , painPoints = []
    , uni = Anonymous
    }


init : Flags -> Navigation.Location -> ( Model, Cmd msg )
init flags location =
    -- TODO: employ flags
    ( initModel, Cmd.none )
