#lang html5-lang

(define my-web-page
  (bootstrap-template
   (div class: "d-flex justify-content-center" style: (css 'text-align "center")
        (h1 class: "col-8"
            "The buttons below are separated into 3 equal columns of size col-4"))
   (div class: "row"
        (div class: "d-flex align-items-center justify-content-center col-4"
             (link-to "home" (button type:  "button"
                                     class: "btn btn-secondary" "Home")))
        (div class: "d-flex align-items-center justify-content-center col-4"
             (link-to "page2" (button type:  "button"
                                      class: "btn btn-secondary" "Page 2")))
        (div class: "d-flex align-items-center justify-content-center col-4"
             (link-to "page3" (button type:  "button"
                                      class: "btn btn-secondary" "Page 3")))
        )))

(define page2
  (bootstrap-template
   (h1 "This is page 2")))

(define page3
  (bootstrap-template
   (h1 "This is page 3")))

(send-to-browser
 "home"  my-web-page
 "page2" page2
 "page3" page3)
