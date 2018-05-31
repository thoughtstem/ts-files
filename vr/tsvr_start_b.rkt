#lang vr-lang

(define my-scene
  (scene
 
   (sphere
    (position 2 1 -5)
    (color 100 50 150))
 
   (sky (color 255 255 255))))
 
(send-to-browser my-scene)