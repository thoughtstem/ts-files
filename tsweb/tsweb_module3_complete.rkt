#lang html5-lang

(define my-web-page
  (div
   (h1 "This page will demo lists, margins and padding")
   (br)
   (div style: (css 'background "LightBlue"
                    'border "solid 2px black"
                    'margin "20px")
        (h3 "Here is an ordered list. That just means it has numbers.")
        (ol
         (li "This is item 1")
         (li "This is item 2")
         (li "This is item 3")))
   (br)
   (div style: (css 'background "LightGreen"
                    'border "solid 2px black"
                    'padding "20px")
        (h3 "This is an un-ordered list. That just means it has bullet points.")
        (ul
         (li "Apples")
         (li "Oranges")
         (li "Bananas")))
   (h3 "Here is an example of "
       (span style: (css 'color "red") "span"))
   (link-to "page2" (p "This is a link to page 2"))
   (a href: "main?page=page2" "This is also a link to page 2")
   ))

(define page2
  (div
   (h1 "Here is a brand new page.")
   (h2 "This is an embedded iframe video:")
   (iframe width: "560" height: "315"
           src: "https://www.youtube.com/embed/dQw4w9WgXcQ?autoplay=1"
           frameborder: "0"
           allow: "autoplay; encrypted-media"
           allowfullscreen: "")))
    
(send-to-browser
 "home"  my-web-page
 "page2" page2)
