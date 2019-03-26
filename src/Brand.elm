module Brand exposing (appBarHeight, canvasColor, cardColor, defaultBodyPadding, defaultPadding, defaultPaddingAmount, primaryColor, primaryColorBolder, primaryTextColor, shadowColor, subtleTextColor, toElmColor)

import Color
import Element exposing (padding, rgb255, rgba255)
import Material.Color exposing (..)


primaryColor =
    red500


primaryColorBolder =
    red700


primaryTextColor =
    rgb255 255 255 255


canvasColor =
    rgb255 250 250 250


toElmColor =
    Element.toRgb >> Color.fromRgba


cardColor =
    rgb255 255 255 255


shadowColor =
    rgba255 0 0 0 0.05


subtleTextColor =
    rgb255 200 200 200


defaultPadding =
    padding defaultPaddingAmount


defaultPaddingAmount =
    20


defaultBodyPadding =
    Element.paddingEach
        { top = appBarHeight + defaultPaddingAmount
        , left = defaultPaddingAmount
        , right = defaultPaddingAmount
        , bottom = defaultPaddingAmount
        }


appBarHeight =
    75
