module Update.Update exposing (subscriptions, update)

import Model.Model as Model exposing (Model)
import Navigation
import Routing exposing (Route(..), parseNavLocation)
import Types.Msgs as Msgs exposing (Msg)
import Types.Types exposing (Uni(..))


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Msgs.LogOut ->
            ( { model | uni = Anonymous }, Cmd.none )

        Msgs.NavLocationChange location ->
            ( { model | currRoute = parseNavLocation location }, Cmd.none )

        Msgs.UrlChange url ->
            ( model, Navigation.newUrl url )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none
