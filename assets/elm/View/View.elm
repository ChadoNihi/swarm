module View.View exposing (view)

import Html exposing (Html, div, a, ul, li, text)
import Html.Attributes exposing (class, href)
import Html.Events exposing (onWithOptions)
import Json.Decode
import Model.Model as Model exposing (Model)
import Types.Msgs as Msgs exposing (Msg)
import Routing exposing (Route(..), routeToPath)


view : Model -> Html Msg
view model =
    div
        [ class "app-container" ]
        [ headerMenu
        , modelToScreen model
        ]


headerMenu : Html Msg
headerMenu =
    div
        [ class "pure-menu pure-menu-horizontal pure-menu-scrollable"
        ]
        [ a
            [ class "pure-menu-link pure-menu-heading"
            , href "/"
            ]
            [ text "Swarm" ]
        , ul
            [ class "pure-menu-list"
            ]
            (let
                ( routes, linkTexts ) =
                    List.unzip routesInMenu
             in
                List.map2 makeMenuItem routes linkTexts
            )
        ]


makeMenuItem : Route -> String -> Html Msg
makeMenuItem route linkText =
    li
        [ class "pure-menu-item"
        ]
        [ a
            [ class "pure-menu-link"
            , href <| routeToPath route
            , onClickPreventDefault (Msgs.UrlChange <| routeToPath route)
            ]
            [ text linkText
            ]
        ]


modelToScreen : Model -> Html Msg
modelToScreen model =
    div
        [ class "screen" ]
        [ text <| routeToPath model.currRoute
        ]


onClickPreventDefault : msg -> Html.Attribute msg
onClickPreventDefault msg =
    onWithOptions
        "click"
        { preventDefault = True
        , stopPropagation = False
        }
        (Json.Decode.succeed msg)


routesInMenu : List ( Route, String )
routesInMenu =
    [ ( PPsRoute, "Urgent" )
    , ( CallsForHelpRoute, "Action" )
    , ( PonderingRoute, "Ponderings" )
    , ( ResourcesRoute, "Commodities" )
    ]
