#lang html5-lang

(require "tsapp_flashcards.rkt")

(define cards
  (card-list
   (list "test"
         (iframe width: "280"
                 height: "157.5"
                 src: "https://www.youtube.com/embed/cHJrP9qvvvI"
                 frameborder: "0"
                 allow:"autoplay; encrypted-media"
                 allowfullscreen: "")
         (embed-image (overlay
                       (text "MAN" 20 "black")
                       (circle 40 "solid" "green"))))
   (list "test2"
         (embed-image (overlay
                       (text "TEST2?" 20 "black")
                       (circle 40 "solid" "red")))
         (embed-image (overlay
                       (text "TEST2!" 20 "black")
                       (circle 40 "solid" "green"))))
   (list "test3"
         (embed-image (overlay
                       (text "TEST3?" 20 "black")
                       (circle 40 "solid" "red")))
         (embed-image (overlay
                       (text "TEST3!" 20 "black")
                       (circle 40 "solid" "green"))))))


(define home
  (android-template
   #:show-qr? #t
   (element 'header
            class: "mui-appbar mui--z1"
            style: (css 'background-color "red")
            (div class: "mui--appbar-height"
                 (div class: "mui--text-title"
                      "Home!")))
   (link-to "0-front"
            (button class: "mui-btn"
                    "Start studying??"))))

(apply send-to-browser
  (flatten (list cards "home" home)))
