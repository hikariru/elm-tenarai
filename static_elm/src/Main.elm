module Main exposing (main)

import Html exposing (text)

main =
    text (bottlesOfJuice 99)

greeting: String
greeting =
    "static elm"

sayHello: String -> String
sayHello name =
    "Hello " ++ name ++ "."

bottlesOf: String -> (Int -> String)
bottlesOf contents amount =
    Debug.toString amount ++ " bottles of " ++ contents ++ " on the wall."

bottlesOfJuice: Int -> String
bottlesOfJuice =
    bottlesOf "Juice"