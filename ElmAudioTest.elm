module ElmAudioTest where

import Mouse
import Window

port micLevel : Signal Float
port bassLevel : Signal Float
port midLevel : Signal Float
port highLevel : Signal Float

main = lift3 display micLevel myColor Window.dimensions

b = 50
c = 400

display x myColor (width, height) = collage width height
  [ move (0,0) (filled myColor (circle (c*x + b)))
  ]

createColor r g b = rgba (floor (r)) (floor (g)) (floor (b)) 0.6

myColor = lift3 createColor bassLevel midLevel highLevel