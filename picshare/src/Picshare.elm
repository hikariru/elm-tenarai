module Picshare exposing (..)

import Html exposing (..)
import Html.Attributes exposing (class, src)

main : Html msg
main =
    div []
        [ div [ class "header" ]
            [ h1 [] [text "Picshare"] ]
        , div [ class "content-flow" ]
            (captionsText captions)
        ]

baseUrl : String
baseUrl =
    "https://programming-elm.com/"

viewDetailedPhoto : String -> String -> Html msg
viewDetailedPhoto url caption =
    div [ class "detailed-photo" ]
        [ img [ src url ][]
        , div [ class "photo-info" ]
            [ h2 [ class "caption" ] [ text caption] ]
        ]

captions : List String
captions =
    [ "Surfing"
    , "The Fox"
    , "Evening"
    ]

captionsText : List String -> List (Html msg)
captionsText =
    List.indexedMap (\idx caption -> viewDetailedPhoto (baseUrl ++ String.fromInt (idx + 1) ++ ".jpg") caption)
