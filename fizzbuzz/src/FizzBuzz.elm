module FizzBuzz exposing (..)

import Html exposing (..)

main : Html msg
main =
    div []
    [ ul []
        (List.range 1 15
            |> List.map fizzbuzz)
    ]

fizzbuzz : Int -> Html msg
fizzbuzz num =
    let
        mod = 
            (modBy 3 num, modBy 5 num)
        str = case mod of
            (0, 0) ->
                "fizzbuzz"
            (0, _) ->
               "fizz"
            (_, 0) ->
                "buzz"
            _ ->
               String.fromInt num
    in
        li []
            [ text str ]
