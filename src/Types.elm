module Types exposing (..)


type alias Msg =
    { operation : Action
    , data : String
    }


type Action
    = ToggleMenu
    | ToggleModal
    | SetBackEnd
    | SetFrontEnd
    | SetTest
    | SetDevTools


type ActiveTools
    = FrontEnd
    | BackEnd
    | Test
    | Tools


type Views
    = Overview
    | Projects
    | Technical
    | NonTechnical


type alias Model =
    { activeTools : ActiveTools
    , language : String
    , currentView : Views
    , experience : List WorkExperience
    , languages : List Language
    , menu : Bool
    , modal : Bool
    , modalLanguage : Language
    , skills : List String
    , tools : List String
    }


type alias WorkExperience =
    { accomplishments : List String
    , date : String
    , description : String
    , feature : Bool
    , org : String
    , role : String
    , tech : List String
    }


type alias Language =
    { label : String
    , interest : Int
    , skill : Int
    , blurb : String
    }
