module RNVectorIcons
       ( fontAwesomeIcon
       , fontAwesomeIconButton
       , iconName
       , iconStyle
       , borderRadius
       )
       where


import RNX.Styles (StyleId)
import React (ReactElement, ReactClass, createElement)
import React.DOM.Props (unsafeMkProps, Props)


foreign import fontAwesomeIconClass :: forall props. ReactClass props
foreign import fontAwesomeIconButtonClass :: forall props. ReactClass props


fontAwesomeIcon :: Array Props -> ReactElement
fontAwesomeIcon props = createElement fontAwesomeIconClass props []


fontAwesomeIconButton :: Array Props -> Array (ReactElement) -> ReactElement
fontAwesomeIconButton = createElement fontAwesomeIconButtonClass


iconName :: String -> Props
iconName = unsafeMkProps "name"


iconStyle :: StyleId -> Props
iconStyle = unsafeMkProps "iconStyle"


borderRadius :: Int -> Props
borderRadius = unsafeMkProps "borderRadius"
