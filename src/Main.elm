module Main exposing (main)

import Browser
import Browser.Navigation as Nav
import Html as H
import Json.Decode
import Url exposing (Url)



---- MODEL ----


type alias Model =
    {}


type Msg
    = NoOp


init : Json.Decode.Value -> Url -> Nav.Key -> ( Model, Cmd Msg )
init flags url key =
    ( {}, Cmd.none )



---- Navigation ----


onUrlRequest =
    always NoOp


onUrlChange =
    always NoOp



---- VIEW ----


view : model -> Browser.Document Msg
view model =
    { title = "Forums"
    , body =
        [ H.text "Forums" ]
    }



---- UPDATE ----


update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )



---- PROGRAM ----


main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = always Sub.none
        , onUrlRequest = onUrlRequest
        , onUrlChange = onUrlChange
        }
