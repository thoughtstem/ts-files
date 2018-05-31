#lang vr-lang

;OCEAN

;add the sample code below in the space above (sky...
   (basic (ocean (hash
                  "color" "blue"
                  "depth" 50
                  "width" 50))
          (rotation -90 0 0))



;MOUNTAINS

;add the sample code below in the space above (sky...
    (basic (mountain (hash
                      "color" "mediumorchid")))



;PARTICLES

;add the sample code below in the space above (sky...
   (basic (particle-system (hash
                            "preset" "snow")))
;other presets are "dust" and "rain"



;PHYSICS

;add the component below to any entity/shape you want
;to move/fall with the physics (e.g. a box)
(dynamic-body)

;add the component below to any entity/shape you want
;to be a still/static object for dynamic objects to collide with (e.g. the floor)
(static-body)


;RANDOMIZER


;you can make entites have a...
random-color
random-position
random-bounce

