import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (onInput)


main = 
  Html.beginnerProgram { model = model, view = view, update = update }


-- MODEL
type alias Model = 
  {
    name: String
    , password: String
    , passwordAgain: String
  }

model : Model
model = Model "" "" ""



