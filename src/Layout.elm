module Layout exposing (view)

import Brand
import Browser
import Element
    exposing
        ( Element
        , column
        , el
        , fill
        , height
        , inFront
        , rgb
        , row
        , text
        , width
        )
import Element.Background as Background
import Element.Border as Border
import Element.Font as Font
import Html as H


view : model -> Browser.Document msg
view model =
    { title = "Forums"
    , body =
        [ Element.layout
            [ inFront <| appBar ]
          <|
            column
                [ width fill
                , height fill
                ]
                [ appBody ]
        ]
    }


appBody =
    row
        [ Background.color Brand.canvasColor
        , height fill
        , width fill
        , Brand.defaultBodyPadding
        ]
    <|
        [ column
            [ height fill
            , width fill
            ]
            [ text "Forums"
            ]
        ]


appBar : Element msg
appBar =
    row
        [ width fill
        , height (Element.px Brand.appBarHeight)
        , Brand.defaultPadding
        , Background.color Brand.primaryColor
        , Font.color Brand.primaryTextColor
        , Border.shadow
            { offset = ( 1, 1 )
            , size = 2
            , blur = 4
            , color = Element.rgba255 0 0 0 0.2
            }
        ]
        [ text "Header" ]
