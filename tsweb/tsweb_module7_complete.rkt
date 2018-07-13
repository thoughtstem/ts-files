#lang html5-lang

(require scribble/html/extra)

(define my-web-page
  (bootstrap-template
   (nav class: "navbar navbar-expand-md navbar-dark bg-dark"
        (a class: "navbar-brand" href: "main/page?=home"
           (img src: "https://s3.amazonaws.com/thoughtstem.cms.dev/WebAssets/ts_tree.svg"
                style: (css 'width "30px"
                            'height "30px"
                            'margin-right "5px"))
           "My Site")
        (button class: "navbar-toggler"
                type: "button"
                data-toggle: "collapse"
                data-target: "#navbarNav"
                (span class: "navbar-toggler-icon"))
        (div class: "collapse navbar-collapse justify-content-between" id: "navbarNav"
             (ul class: "navbar-nav"
                 (li class: "nav-item active"
                     (a class: "nav-link" href: "main?page=home" "Home" ))
                 (li class: "nav-item"
                     (a class: "nav-link" href: "main?page=page2" "Page 2" ))
                 (li class: "nav-item"
                     (a class: "nav-link" href: "main?page=page3" "Page 3" ))
                 )
             (link-to "aboutme" (button class: "btn btn-outline-success my-2 my-md-0"
                                        type: "button"
                                        "About Me"))
             )
        )))

(define page2
  (bootstrap-template
   (h1 "This is page 2")))

(define page3
  (bootstrap-template
   (h1 "This is page 3")))

(define aboutme
  (bootstrap-template
   (h1 "This is a page about me")))

(send-to-browser
 "home"  my-web-page
 "page2" page2
 "page3" page3
 "aboutme" aboutme)
