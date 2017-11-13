module Architecture
    exposing
        ( Message(..)
        , Model
        , Flags
        )

import Zipper.History exposing (History)
import File exposing (Tree, Path)
import Keyboard


type alias Flags =
    { pwd : Path
    , home : Path
    }


type Message
    = Patch (Model -> ( Model, Cmd Message ))
    | RetreiveTree Tree


type alias Model =
    { history : History Path
    , home : Path
    , tree : Tree
    , showHidden : Bool
    , searchState : String
    , cmdPressed : Bool
    }
