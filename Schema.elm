-- Reference: http://freemind.cvs.sourceforge.net/viewvc/freemind/freemind/freemind.xsd?pathrev=fm_0_9_0_beta2&revision=1.1.2.4

type Map
    = Map (List Node)


type Node
    = Node String NodeAttributes (List NodeChild)


type alias NodeAttributes =
    { backgroundColor : Maybe Color
    , color : Maybe Color
    , folded : Bool
    , id : Maybe String
    , link : Maybe String
    , position : Maybe Position
    , style : Maybe String
    , created : Maybe Time
    , modified : Maybe Time
    , spacing :
        { horizontalGap : Maybe Int
        , verticalGap : Maybe Int
        , verticalShift : Maybe Int
        }
    , encryptedContent : Maybe String
    }


type Position
    = Left
    | Right


type NodeChild
    = ChildNode Node
    | ChildIcon Icon
    | ChildHook Hook


type Icon =
    Icon String


type Hook =
    Hook
        { name : String
        , text : Maybe String
        , parameters : Maybe { remindUserAt : Maybe Int }
        }
