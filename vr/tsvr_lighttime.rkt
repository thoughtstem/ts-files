#lang vr-lang

(define  light-scene
  (scene

   (light
    (position 0 20 0)
    (type "ambient")
    (intensity .5)
    (color 200 255 255))

   (light
    (position 10 5 5)
    (type "directional")
    (color 255 255 200))
   
   (cylinder
    (position 2 1 -7)
    (color 200 200 100)
    (scale 0.5 5 0.5))

   (box
    (position -3 0 -5)
    (color 180 255 220))

   (box
    (position 8 3 -10)
    (color 200 50 0))
   
   (plane
    (position 0 -3 0)
    (rotation -90 0 0)
    (scale 200 200 200)
    (color 100 100 100))

   
   (sky (color 180 250 255))))

(send-to-browser my-scene)
