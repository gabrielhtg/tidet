; --------------------------------------------------------------------------------------------------------------------
; NAMA    : GABRIEL CESAR HUTAGALUNG
; NIM     : 11S21010
; PRODI   : S1 INFORMATIKA
; --------------------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI KONSTRUKTOR

; Nama Fungsi                                                                                        makedate(dd mm yy)

; makedate : integer --> integer
; {makedate(dd mm yy) adalah fungsi yang menghasilkan input tanggal, bulan dan tahun yang kita input}
; --------------------------------------------------------------------------------------------------------------------
; REALISASI KONSTRUKTOR

(defun makedate(dd mm yy)
    (list dd '/ mm '/ yy)
)

; --------------------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI SELEKTOR

; Nama Fungsi                                                                                         day(d)

; day : integer --> integer
; {day(d) akan menentukan tanggal pada list sebelumnya}

; Nama Fungsi                                                                                         month(d)

; month : integer --> integer
; {month(d) akan menentukan bulan pada list sebelumnya}

; Nama Fungsi                                                                                         year(d)

; year : integer --> integer
; {year(d) akan menentukan tahun pada list sebelumnya}

; Nama Fungsi                                                                                         kabisat(d)

; year : integer --> string
; {kabisat(d) akan menentukan apakah tahun yang dimasukkan adalah tahun kabisat atau tidak}
; --------------------------------------------------------------------------------------------------------------------
; REALISASI SELEKTOR

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

; (defun bulan30(d)
;     (cond
;         (4) (6) (9) (11)
;     )
; )

; (defun bulan31(d)
;     (cond
;         (1) (3) (5) (7) (8) (10) (12)
;     )
; )
; --------------------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI OPERATOR

; Nama Fungsi                                                                                           nextday(d)

; nextday : integer --> integer
; {nextday(d) menentukan tanggal berikutnya}

; Nama Fungsi                                                                                           jlhd29(d)

; jlhd29 : integer --> integer
; {jlhd29(d) berfungsi untuk menentukan jumlah tanggal berikutnya pada bulan 2 kabisat}

; Nama Fungsi                                                                                           jlhd28(d)

; jlhd28 : integer --> integer
; {jlhd28(d) berfungsi untuk menentukan jumlah tanggal berikutnya pada bulan 2 non kabisat}

; Nama Fungsi                                                                                           jlhd30(d)

; jlhd30 : integer --> integer
; {jlhd30(d) berfungsi untuk menentukan jumlah tanggal berikutnya pada bulan yang memiliki jumlah tanggal 30}

; Nama Fungsi                                                                                           jlhd31(d)

; jlhd31 : integer --> integer
; {jlhd31(d) berfungsi untuk menentukan jumlah tanggal berikutnya pada bulan yang memiliki jumlah tanggal 31}

; Nama Fungsi                                                                                            md29(d)

; md29 : integer --> integer
; {md29(d) berfungsi untuk mendefenisikan tgl 1 bulan 3 tahun yy}

; Nama Fungsi                                                                                           yesterday(d)

; yesterday : integer --> integer
; {yesterday(d) menentukan tanggal sebelumnya}
; --------------------------------------------------------------------------------------------------------------------

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
            ; untuk bulan 2
                ((and (= (month d) 2) (= (mod (year d) 4) 0)) (jlhd29 d))
                ((and (= (month d) 2) (/= (mod (year d) 4) 0)) (jlhd28 d))

            ; untuk bulan yang memiliki jumlah tanggal 30
                ((and (= (month d) 4) (<= (+ (day d) 1) 30)) (jlhd30 d))    
                ((and (= (month d) 4) (> (+ (day d) 1) 30)) (jlhd30 d))
                ((and (= (month d) 6) (<= (+ (day d) 1) 30)) (jlhd30 d))    
                ((and (= (month d) 6) (> (+ (day d) 1) 30)) (jlhd30 d))
                ((and (= (month d) 9) (<= (+ (day d) 1) 30)) (jlhd30 d))    
                ((and (= (month d) 9) (> (+ (day d) 1) 30)) (jlhd30 d))
                ((and (= (month d) 11) (<= (+ (day d) 1) 30)) (jlhd30 d))    
                ((and (= (month d) 11) (> (+ (day d) 1) 30)) (jlhd30 d))
            
            ; untuk bulan yang memiliki jumlah tanggal 31
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
                                                 
            ; untuk akhir tahun
                ((and (= (month d) 12) (> (+ (day d) 1) 31)) 1)
        )

        '/

        (cond
            ; untuk bulan 2
                ((and (= (month d) 2) (= (mod (year d) 4) 0) (> (+ (day d) 1) 29)) (+ (month d) 1)) 
                ((and (= (month d) 2) (= (mod (year d) 4) 0) (<= (+ (day d) 1) 29)) (month d))     
                ((and (= (month d) 2) (/= (mod (year d) 4) 0) (> (+ (day d) 1) 28)) (+ (month d) 1))
                ((and (= (month d) 2) (/= (mod (year d) 4) 0) (<= (+ (day d) 1) 28)) (month d))
            
            ; untuk bulan yang memiliki jumlah tanggal 30
                ((and (= (month d) 4) (<= (+ (day d) 1) 30)) (month d))    
                ((and (= (month d) 4) (> (+ (day d) 1) 30)) (+ (month d) 1))
                ((and (= (month d) 6) (<= (+ (day d) 1) 30)) (month d))    
                ((and (= (month d) 6) (> (+ (day d) 1) 30)) (+ (month d) 1))
                ((and (= (month d) 9) (<= (+ (day d) 1) 30)) (month d))    
                ((and (= (month d) 9) (> (+ (day d) 1) 30)) (+ (month d) 1))
                ((and (= (month d) 11) (<= (+ (day d) 1) 30)) (month d))    
                ((and (= (month d) 11) (> (+ (day d) 1) 30)) (+ (month d) 1))
            
            ; untuk bulan yang memiliki jumlah tanggal 31
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
            
            ; ; untuk akhir tahun
            ;     ((and (= (month d) 12) (> (+ (day d) 1) 31)) (+ (year d) 1))
            
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
            ; untuk bulan 2
                ((and (= (month d) 3) (= (mod (year d) 4) 0)) (md29 d))
                ((and (= (month d) 3) (/= (mod (year d) 4) 0) (= (day d) 1)) 28)
                
                ((/= (day d) 1) (- (day d) 1))

            ; untuk bulan yang memiliki jumlah tanggal 30
                ((and (= (month d) 5) (= (day d) 1)) 30)                    
                ((and (= (month d) 7) (= (day d) 1)) 30)     
                ((and (= (month d) 10) (= (day d) 1)) 30)
                ((and (= (month d) 12) (= (day d) 1)) 30)    
                          
            ; untuk bulan yang memiliki jumlah tanggal 31
                ((and (= (month d) 2) (= (day d) 1)) 31)              
                ((and (= (month d) 4) (= (day d) 1)) 31)              
                ((and (= (month d) 6) (= (day d) 1)) 31)             
                ((and (= (month d) 8) (= (day d) 1)) 31)           
                ((and (= (month d) 9) (= (day d) 1)) 31)             
                ((and (= (month d) 11) (= (day d) 1)) 31)         
                ((and (= (month d) 1) (= (day d) 1)) 31)    
                        
            ; untuk awal bulan
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

; --------------------------------------------------------------------------------------------------------------------
; DEFENISI DAN SPESIFIKASI PREDIKAT

; Nama Fungsi                                                                                             iseqd(d1 d2)

; iseqd : integer --> boolean
; {iseqd(d1 d2) membandingkan apakah kedua date sama}

; Nama Fungsi                                                                                             isbefore(d1 d2)

; isbefore : integer --> boolean
; {isbefore(d1 d2) mengembalikan nilai true jika d1 sebelum d2}
; --------------------------------------------------------------------------------------------------------------------

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

(setq jan1 (makedate 5 1 2003))
(setq jan2 (makedate 31 1 2003))
(setq a (makedate 21 4 2006))
(setq b (makedate 15 2 2016))
(setq c (makedate 28 2 2016))
(setq d (makedate 28 2 2015))
(setq e (makedate 31 12 2015))
(setq f (makedate 31 1 2016))
(setq g (makedate 30 11 2016))
(setq h (makedate 1 3 2000))
(setq i (makedate 1 3 2001))
(setq j (makedate 1 1 2003))
; (setq a (makedate 1 1 2000))
; (setq b (makedate 1 2 2000))
; (setq c (makedate 1 3 2000))
; (setq d (makedate 1 3 2007))
; (setq e (makedate 1 4 2000))    
; (setq f (makedate 1 5 2000))
; (setq g (makedate 1 6 2000))
; (setq h (makedate 1 7 2000))
; (setq i (makedate 1 8 2000))
; (setq j (makedate 1 9 2000))
; (setq k (makedate 1 10 2000))
; (setq l (makedate 1 11 2000))
; (setq m (makedate 1 12 2000))
; (setq o (makedate 1 1 2000))
