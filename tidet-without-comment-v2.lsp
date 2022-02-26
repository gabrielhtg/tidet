(defun makedate()
    (princ "Masukkan tanggalnya: ")
    (setq dd (read))
    (princ "Masukkan bulannya: ")
    (setq mm (read))
    (princ "Masukkan tahunnya: ")
    (setq yy (read))
    (tulis dd mm yy)
)

(defun tulis(dd mm yy)
    (list dd '/ mm '/ yy)
)

(defun day(d)
    (car d)
)

(defun month(d)
    (car (cdr (cdr d)))
)

(defun year(d)
    (car (reverse d))
)

(defun kabisat(d)
    (cond
        ((= (mod (year d) 4) 0) "Ini tahun kabisat :)")
        (t "Bukan tahun kabisat.")
    )
)

(defun jlhd29(d)
    (cond
        ((> (+ (day d) 1) 29) (mod (+ (day d) 1) 29))
        (t (+ (day d) 1))
    )
)

(defun jlhd28(d)
    (cond
        ((> (+ (day d) 1) 28) (mod (+ (day d) 1) 28))
        (t (+ (day d) 1))
    )
)

(defun jlhd30(d)
    (cond
        ((> (+ (day d) 1) 30) (mod (+ (day d) 1) 30))
        (t (+ (day d) 1))
    )
)

(defun jlhd31(d)
    (cond
        ((> (+ (day d) 1) 31) (mod (+ (day d) 1) 31))
        (t (+ (day d) 1))
    )
)

(defun nextday(d)
    (list
        (cond
                ((and (= (month d) 2) (= (mod (year d) 4) 0)) (jlhd29 d))
                ((and (= (month d) 2) (/= (mod (year d) 4) 0)) (jlhd28 d))

                ((and (= (month d) 4) (<= (+ (day d) 1) 30)) (jlhd30 d))    
                ((and (= (month d) 4) (> (+ (day d) 1) 30)) (jlhd30 d))
                ((and (= (month d) 6) (<= (+ (day d) 1) 30)) (jlhd30 d))    
                ((and (= (month d) 6) (> (+ (day d) 1) 30)) (jlhd30 d))
                ((and (= (month d) 9) (<= (+ (day d) 1) 30)) (jlhd30 d))    
                ((and (= (month d) 9) (> (+ (day d) 1) 30)) (jlhd30 d))
                ((and (= (month d) 11) (<= (+ (day d) 1) 30)) (jlhd30 d))    
                ((and (= (month d) 11) (> (+ (day d) 1) 30)) (jlhd30 d))
            
                ((and (= (month d) 1) (<= (+ (day d) 1) 31)) (jlhd31 d))    
                ((and (= (month d) 1) (> (+ (day d) 1) 31)) (jlhd31 d))
                ((and (= (month d) 3) (<= (+ (day d) 1) 31)) (jlhd31 d))    
                ((and (= (month d) 3) (> (+ (day d) 1) 31)) (jlhd31 d))
                ((and (= (month d) 5) (<= (+ (day d) 1) 31)) (jlhd31 d))    
                ((and (= (month d) 5) (> (+ (day d) 1) 31)) (jlhd31 d))
                ((and (= (month d) 7) (<= (+ (day d) 1) 31)) (jlhd31 d))    
                ((and (= (month d) 7) (> (+ (day d) 1) 31)) (jlhd31 d))
                ((and (= (month d) 8) (<= (+ (day d) 1) 31)) (jlhd31 d))    
                ((and (= (month d) 8) (> (+ (day d) 1) 31)) (jlhd31 d))
                ((and (= (month d) 10) (<= (+ (day d) 1) 31)) (jlhd31 d))    
                ((and (= (month d) 10) (> (+ (day d) 1) 31)) (jlhd31 d))
                ((and (= (month d) 12) (<= (+ (day d) 1) 31)) (jlhd31 d))    
                ((and (= (month d) 12) (> (+ (day d) 1 31))) (jlhd31 d))
                                                 
                ((and (= (month d) 12) (> (+ (day d) 1) 31)) 1)
        )

        '/

        (cond
                ((and (= (month d) 2) (= (mod (year d) 4) 0) (> (+ (day d) 1) 29)) (+ (month d) 1)) 
                ((and (= (month d) 2) (= (mod (year d) 4) 0) (<= (+ (day d) 1) 29)) (month d))     
                ((and (= (month d) 2) (/= (mod (year d) 4) 0) (> (+ (day d) 1) 28)) (+ (month d) 1))
                ((and (= (month d) 2) (/= (mod (year d) 4) 0) (<= (+ (day d) 1) 28)) (month d))
            
                ((and (= (month d) 4) (<= (+ (day d) 1) 30)) (month d))    
                ((and (= (month d) 4) (> (+ (day d) 1) 30)) (+ (month d) 1))
                ((and (= (month d) 6) (<= (+ (day d) 1) 30)) (month d))    
                ((and (= (month d) 6) (> (+ (day d) 1) 30)) (+ (month d) 1))
                ((and (= (month d) 9) (<= (+ (day d) 1) 30)) (month d))    
                ((and (= (month d) 9) (> (+ (day d) 1) 30)) (+ (month d) 1))
                ((and (= (month d) 11) (<= (+ (day d) 1) 30)) (month d))    
                ((and (= (month d) 11) (> (+ (day d) 1) 30)) (+ (month d) 1))
            
                ((and (= (month d) 1) (<= (+ (day d) 1) 31)) (month d))    
                ((and (= (month d) 1) (> (+ (day d) 1) 31)) (+ (month d) 1))
                ((and (= (month d) 3) (<= (+ (day d) 1) 31)) (month d))    
                ((and (= (month d) 3) (> (+ (day d) 1) 31)) (+ (month d) 1))
                ((and (= (month d) 5) (<= (+ (day d) 1) 31)) (month d))    
                ((and (= (month d) 5) (> (+ (day d) 1) 31)) (+ (month d) 1))
                ((and (= (month d) 7) (<= (+ (day d) 1) 31)) (month d))    
                ((and (= (month d) 7) (> (+ (day d) 1) 31)) (+ (month d) 1))
                ((and (= (month d) 8) (<= (+ (day d) 1) 31)) (month d))    
                ((and (= (month d) 8) (> (+ (day d) 1) 31)) (+ (month d) 1))
                ((and (= (month d) 10) (<= (+ (day d) 1) 31)) (month d))    
                ((and (= (month d) 10) (> (+ (day d) 1) 31)) (+ (month d) 1))
                ((and (= (month d) 12) (<= (+ (day d) 1) 31)) (month d))    
                ((and (= (month d) 12) (> (+ (day d) 1) 31)) 1)
        )        

        '/

        (cond
            ((and (= (month d) 12) (= (day d) 31)) (+ (year d) 1))
            (t (year d))
        )
    )
)

(defun md29(d)
    (cond
            ((and (= (day d) 1) (= (month d) 3)) 29)
    )
)

(defun yesterday(d)
    (list
        (cond
                ((and (= (month d) 3) (= (mod (year d) 4) 0)) (md29 d))
                ((and (= (month d) 3) (/= (mod (year d) 4) 0) (= (day d) 1)) 28)
                
                ((/= (day d) 1) (- (day d) 1))

                ((and (= (month d) 5) (= (day d) 1)) 30)                    
                ((and (= (month d) 7) (= (day d) 1)) 30)     
                ((and (= (month d) 10) (= (day d) 1)) 30)
                ((and (= (month d) 12) (= (day d) 1)) 30)    
                          
                ((and (= (month d) 2) (= (day d) 1)) 31)              
                ((and (= (month d) 4) (= (day d) 1)) 31)              
                ((and (= (month d) 6) (= (day d) 1)) 31)             
                ((and (= (month d) 8) (= (day d) 1)) 31)           
                ((and (= (month d) 9) (= (day d) 1)) 31)             
                ((and (= (month d) 11) (= (day d) 1)) 31)         
                ((and (= (month d) 1) (= (day d) 1)) 31)    
                        
                ((and (= (month d) 1) (= (day d) 1)) 31)
        )

        '/

        (cond
            ((and (= (day d) 1) (/= (month d) 1) (not (> (month d) 12))) (- (month d) 1))
            ((and (= (month d) 1) (= (day d) 1)) 12)
            (t (month d))            
        )        

        '/

        (cond
            ((and (= (month d) 1) (= (day d) 1)) (- (year d) 1))
            (t (year d))
        )
    )
)

(defun iseqd(d1 d2)
    (cond 
        ((and (= (day d1) (day d2)) (= (month d1) (month d2)) (= (year d1) (year d2))) 'Equal)
        (t "Not Equal")
    )
)

(defun isbefore(d1 d2)
    (cond
        ((< (year d1) (year d2)) 'TRUE)
        ((and (= (year d1) (year d2)) (< (month d1) (month d2))) 'TRUE)
        ((and (= (year d1) (year d2)) (= (month d1) (month d2)) (< (day d1) (day d2))) 'TRUE)
        (t 'FALSE)
    )
)
; --------------------------------------------------------------------------------------------------------------------

; (setq jan1 (makedate 5 1 2003))
; (setq jan2 (makedate 31 1 2003))
; (setq a (makedate 21 4 2006))
; (setq b (makedate 15 2 2016))
; (setq c (makedate 28 2 2016))
; (setq d (makedate 28 2 2015))
; (setq e (makedate 31 12 2015))
; (setq f (makedate 31 1 2016))
; (setq g (makedate 30 11 2016))
; (setq h (makedate 1 3 2000))
; (setq i (makedate 1 3 2001))
; (setq j (makedate 1 1 2003))
; (setq k (makedate 1 1 2000))
; (setq l (makedate 1 2 2000))
; (setq m (makedate 1 3 2000))
; (setq n (makedate 1 3 2007))
; (setq o (makedate 1 4 2000))    
; (setq p (makedate 1 5 2000))
; (setq q (makedate 1 6 2000))
; (setq r (makedate 1 7 2000))
; (setq s (makedate 1 8 2000))
; (setq t (makedate 1 9 2000))
; (setq u (makedate 1 10 2000))
; (setq v (makedate 1 11 2000))
; (setq w (makedate 1 12 2000))
; (setq x (makedate 1 1 2000))
