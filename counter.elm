import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

main =
  Html.beginnerProgram { model = model, view = view, update = update }

-- Model
type alias Model = Int
model : Model
model = 0

-- Update
type Msg = Increment | Decrement | SquareIt | Reset

square_it model = model * model
multiply_by x model = x * model

update: Msg -> Model -> Model
update msg model =
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

    SquareIt ->
      square_it model

    Reset ->
      0

view model =
  div []
    [ button [ onClick Decrement ] [ text "-" ]
    , div [] [ text (toString model) ]
    , button [ onClick Increment ] [ text "+" ]
    , button [ onClick SquareIt ] [ text "square" ]
    , button [ onClick Reset ] [ text "reset" ]
    ]
