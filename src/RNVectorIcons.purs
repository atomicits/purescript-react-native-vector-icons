module RNVectorIcons
       ( fontAwesomeIcon
       , fontAwesomeIconButton
       , iconName
       , iconStyle
       , borderRadius
       )
       where

import RNX.Components
import RNX.Props (unsafeMkProps)
import RNX.Styles (StyleId)

foreign import fontAwesomeIconClass :: forall props. ReactClass props
foreign import fontAwesomeIconButtonClass :: forall props. ReactClass props


fontAwesomeIcon :: forall action. Array (Prop action) -> Element action
fontAwesomeIcon props = createElement fontAwesomeIconClass props []


fontAwesomeIconButton :: forall action. Array (Prop action) -> Array (Element action) -> Element action
fontAwesomeIconButton = createElement fontAwesomeIconButtonClass


iconName :: forall action. String -> Prop action
iconName = unsafeMkProps "name"


iconStyle :: forall action. StyleId -> Prop action
iconStyle = unsafeMkProps "iconStyle"


borderRadius ::  forall action. Int -> Prop action
borderRadius = unsafeMkProps "borderRadius"
