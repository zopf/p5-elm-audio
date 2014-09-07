module ElmAudioTest where

import Mouse
import Window

port micLevel : Signal Float

-- main : Element
main = lift3 display micLevel myColor Window.dimensions

b = 50
c = 400

display x myColor (width, height) = collage width height
  [ move (0,0) (filled myColor (circle (c*x + b)))
  ]

createColor x = rgba (floor (x*1280.0)) 111 111 0.6

-- myColor : Color
myColor = lift createColor micLevel