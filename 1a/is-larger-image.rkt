;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname is-larger-image) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;is-larger

;image, image -> boolean
;check if the first image is larger than the second
(check-expect ( is-larger (rectangle 5 1 "solid" "red") (rectangle 1 1 "solid" "red")) true)
(check-expect ( is-larger (rectangle 1 1 "solid" "red") (rectangle 5 1 "solid" "red")) false)
(check-expect ( is-larger (rectangle 5 5 "solid" "red") (rectangle 5 5 "solid" "red")) false)


;(define (is-larger image image) true)
;(define (is-larger i j)
;(...i))

(define (is-larger i j)
  (if (> (image-width i) (image-width j))
      true
      false)
  )