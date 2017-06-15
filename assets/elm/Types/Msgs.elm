module Types.Msgs exposing (..)

import Navigation


type Msg
    = LogOut
    | NavLocationChange Navigation.Location
    | UrlChange String
