module Main exposing (..)

import Navigation exposing (Location)
import Model.Model as Model exposing (Model)
import Types.Msgs as Msgs exposing (Msg)
import Types.Types as Types exposing (Flags)
import Update.Update as Update
import View.View as View


main : Program Flags Model Msg
main =
    Navigation.programWithFlags
        Msgs.NavLocationChange
        { init = Model.init
        , view = View.view
        , update = Update.update
        , subscriptions = Update.subscriptions
        }
