#lang racket-processing

(define PImage:mainImage null)
(define int:shapeMode 0)
(define int:displayMode 0)
(define int:imageIndex 0)

(define (setup)
  (size 800 533)

  (set! mainImage (loadImage "https://s3.amazonaws.com/thoughtstem.cms.dev/sd.jpg"))
  (mainImage.resize 0 600)
  (background 0)
  (rectMode CENTER)
  (colorMode HSB 255 255 255))

(define (draw)
  (if (= displayMode 0)
      (drawCircles 600)
      (image mainImage 0 0)))

(define (drawCircles int:n)
  (if (= 0 n)
      (void)
      (begin
        (define float:x (random width))
        (define float:y (random height))
        (define color:c (mainImage.get (int x) (int y)))

        (fill c 25)

        (stroke (* mouseX (/ 255 width)) 255 255 20)
        (strokeWeight 1)

        (if (= shapeMode 0)
            (ellipse x y (/ (* mouseY 40) height)
                     (/ (* mouseY 40) height))
            (rect x y (/ (* mouseY 40) height)
                  (/ (* mouseY 40) height)))
        (drawCircles (- n 1))
        )))

(define (keyPressed)
  (cond [(= key '1) (set! displayMode 0)]
        [(= key '2) (set! displayMode 1)]
        [(= key '9) (set! shapeMode 0)]
        [(= key '0) (set! shapeMode 9)]
        [(= key 'n) (changeImage)]))

(define (reloadImage)
  (background 0)
  (cond [(= 0 imageIndex) (set! mainImage (loadImage "https://s3.amazonaws.com/thoughtstem.cms.dev/sd.jpg"))]
        [(= 1 imageIndex) (set! mainImage (loadImage "https://s3.amazonaws.com/thoughtstem.cms.dev/balboa.jpg"))]
        [(= 2 imageIndex) (set! mainImage (loadImage "https://s3.amazonaws.com/thoughtstem.cms.dev/dijkstra.jpg"))]
        [else             (set! mainImage (loadImage "https://s3.amazonaws.com/thoughtstem.cms.dev/library.jpg"))])
  (mainImage.resize 0 600))

(define (changeImage)
  (set! imageIndex (% (+ 1 imageIndex) 3))
  (reloadImage))
