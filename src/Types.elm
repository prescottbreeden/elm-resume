module Types exposing (..)


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


type alias Language =
    { label : String
    , interest : Int
    , skill : Int
    , blurb : String
    }


type alias LanguageMsg =
    { operation : Action
    , data : Language
    }


type alias Model =
    { activeTools : ActiveTools
    , currentView : Views
    , experience : List WorkExperience
    , language : String
    , languages : List Language
    , menu : Bool
    , modal : Bool
    , modalLanguage : Language
    , skills : List String
    , tools : List String
    }


type alias Msg =
    { operation : Action
    , data : String
    }


type Views
    = Experience
    | Projects
    | Technical


type alias WorkExperience =
    { accomplishments : List String
    , date : String
    , description : String
    , feature : Bool
    , org : String
    , role : String
    , tech : List String
    }
