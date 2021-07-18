module Types exposing (..)


type Action
    = CloseModal
    | ToggleMenu
    | OpenLanguageDetails
    | ShowBackEnd
    | ShowFrontEnd
    | ShowTest
    | ShowDevTools
    | ShowExperience
    | ShowExtended
    | ShowProjects
    | ShowNonTechnical


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


type alias Project =
    { name : String
    , tech : List String
    , description : String
    }


type Views
    = Experience
    | Extended
    | Projects
    | NonTechnical


type alias WorkExperience =
    { accomplishments : List String
    , date : String
    , description : String
    , feature : Bool
    , org : String
    , role : String
    , tech : List String
    }
