#lang vr-lang

(define (bulb x y z)
  (list
   (sphere
    (position x y z))
   
   (light
    (position (+ x 3) y z)
    (type "point")
    (intensity .5))

   (light
    (position (- x 3) y z)
    (type "point")
    (intensity .5))

   (light
    (position x y (+ z 3))
    (type "point")
    (intensity .5))

   (light
    (position x y (- z 3))
    (type "point")
    (intensity .5))))


(define light-scene
  (scene

   (bulb 2 4 -7)
   
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
    (position 0 -1 0)
    (rotation -90 0 0)
    (scale 50 50 50)
    (color 100 100 100))

   (sky (color 50 100 255))))

(send-to-browser light-scene)