module Types.Types exposing (..)


type alias Flags =
    Maybe (List String)


type alias PainPoint =
    { id : PPId
    , title : String
    , descr : Maybe String
    , location : Maybe Where
    , sources : Maybe List String
    , urgency : Int
    , proposedSolutions : List { title : String, path : String }
    , path : String
    }


type alias PPId =
    String


type alias ResId =
    String


type alias SolId =
    String


type alias UniId =
    String


type Uni
    = Anonymous
    | Authenticated UniData


type alias UniData =
    { name : String
    , id : UniId
    , email : String
    }


type Where
    = GeoLocation
        { region : Maybe String
        , country : Maybe String
        , city : Maybe String
        , address : Maybe String
        , coords : Maybe ( Float, Float )
        }
    | String



-- type alias GeoLocation =
--     { region : Maybe String
--     , country : Maybe String
--     , city : Maybe String
--     , address : Maybe String
--     , coords : Maybe Typle ( Float, Float )
--     }
