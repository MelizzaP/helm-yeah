module IntroML exposing (..)

exclaim s = s ++ "!!!!!!!!"

plus x y = x + y

plusInt : Int -> Int -> Int
plusInt = plus

toString n = String.fromInt n

listOfDigits num =
  if num > 0 then
    String.split("") <|
    String.fromInt num
  else
   []

reduceNumber num =
  if num > 9 then
    num |>
    listOfDigits |>
    List.filterMap(String.toInt) |>
    List.foldl (+) 0 |>
    reduceNumber
  else
    num
