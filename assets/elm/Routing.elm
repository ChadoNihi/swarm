module Routing exposing (..)

import Navigation
import Result
import Types.Types exposing (PPId, ResId, SolId)
import UrlParser as UrlPa exposing ((</>))


type Route
    = CallsForHelpRoute
    | PPsRoute
    | PPRoute PPId
    | ResourcesRoute
    | ResRoute ResId
    | SolutionsRoute PPId
    | SolRoute SolId
    | PonderingRoute
    | NothingHereRoute



-- pathnameToRoute : String -> Route
-- pathnameToRoute pathname =
--     ""


parseNavLocation : Navigation.Location -> Route
parseNavLocation location =
    Maybe.withDefault NothingHereRoute <| UrlPa.parsePath routeParser location


routeParser : UrlPa.Parser (Route -> a) a
routeParser =
    UrlPa.oneOf
        [ UrlPa.map PPsRoute (UrlPa.top)
        , UrlPa.map PPRoute (UrlPa.s "pain" </> ppIdParser)
        , UrlPa.map CallsForHelpRoute (UrlPa.s "help-requests")
        , UrlPa.map PonderingRoute (UrlPa.s "contemplative")
        , UrlPa.map ResourcesRoute (UrlPa.s "resources")

        -- and so on
        ]


routeToPath : Route -> String
routeToPath route =
    case route of
        CallsForHelpRoute ->
            "/help-requests"

        PPsRoute ->
            "/"

        PPRoute pPId ->
            "/pain/" ++ pPId

        ResourcesRoute ->
            "/resources"

        ResRoute resId ->
            "/resources/" ++ resId

        SolutionsRoute pPId ->
            "/proposed-solutions/" ++ pPId

        SolRoute solId ->
            "/proposed-solution/" ++ solId

        PonderingRoute ->
            "/contemplative"

        NothingHereRoute ->
            "/nothing"



-- Custom parsers


ppIdParser : UrlPa.Parser (PPId -> a) a
ppIdParser =
    UrlPa.custom "PP_ID" Result.Ok
