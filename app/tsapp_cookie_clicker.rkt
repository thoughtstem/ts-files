#lang html5-lang

(require scribble/html/extra)

; ==== Game Instructions ====
; Click the cookie to make 1 cookie per click.
; Click Buy Cookie Shop (costs 20 cookies) to generate 1 cookie per second per shop.
; Click Buy Cookie Factory (costs 100 cookies) to generate 10 cookies per second per shop.

(define my-app
  (android-template
   (header class: "mui-appbar mui--z1"
           style: (css 'background-color "red")
           (div class: "mui-appbar-height"
                (div class: "mui--text-title mui--text-center"
                     "Cookie Clicker!")))
   
   (div class: "mui--text-center"
        (div class: "mui--appbar-height")
        (div id: "cookieCount" class: "mui--text-display3" "0")
        (br)
        (button class: "mui-btn mui-btn--raised"
                style: (css 'width  "400px"
                            'height "400px"
                            'color "white"
                            'background-image "url('https://cdn.glitch.com/5a0b54d2-d645-4d54-8557-45fd9ea03c71%2Fcookie.png?1534242232486')"
                            'background-size "100%")
                onclick: "makeCookie()"
                "PRESS ME"))
   
   (div class: "mui--text-center"
        (button class: "mui-btn mui-btn--raised"
                onclick: "buyCookieShop()"
                "Buy Cookie Shop")
        (button class: "mui-btn mui-btn--raised"
                onclick: "buyCookieFactory()"
                "Buy Cookie Factory"))
  
   (script
    "var cookieCount = 0;

     function makeCookie() {
        cookieCount += 1;
        document.getElementById(\"cookieCount\").innerHTML = cookieCount + \" cookies\";
     }

     function buyCookieShop() {
          cookieCount = cookieCount - 20;
          document.getElementById(\"cookieCount\").innerHTML = cookieCount + \" cookies\";
          setInterval(function(){
            cookieCount++;
            document.getElementById(\"cookieCount\").innerHTML = cookieCount + \" cookies\";
          },1000);
     }

     function buyCookieFactory() {
          cookieCount = cookieCount - 100;
          document.getElementById(\"cookieCount\").innerHTML = cookieCount + \" cookies\";
          setInterval(function(){
            cookieCount += 10;
            document.getElementById(\"cookieCount\").innerHTML = cookieCount + \" cookies\";
          },1000);
     }")
   ))

(send-to-browser
 "home" my-app)