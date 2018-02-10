module Main exposing (..)

import Html exposing (..)
import Model exposing (..)
import Update
import View
import Subscriptions


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = View.view
        , update = Update.update
        , subscriptions = Subscriptions.subscriptions
        }


init : ( Model, Cmd Msg )
init =
    { screenSize = Desktop } ! []
