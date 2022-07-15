; fungsi utama

(defun makeDate (dd mm yy)
    (list dd mm yy)
)

(defun day (tanggal)
    (car tanggal) ; mengambil tanggal dari date (9 5 2003)
)

(defun month (tanggal)
    (car (cdr tanggal)) ; mengambil month
)

(defun year (tanggal)
    (car (reverse tanggal)) ; mengambil year
)

(defun nextDay (tanggal)
    (cond
        ((and (akhirbulan tanggal) (not (akhirtahun tanggal)))(list 1 (+ (month tanggal) 1) (year tanggal)))
        ((akhirtahun tanggal) (list 1 1 (+ (year tanggal) 1)))
        (t (list (+ (day tanggal) 1) (month tanggal) (year tanggal)))
    )
)

(defun yesterday (tanggal)
    (setq temp (list (day tanggal) (- (month tanggal) 1) (year tanggal))) ; 9 5 2003 --> 9 4 2003
    (cond
        ((awaltahun tanggal) (list 31 12 (- (year tanggal) 1)))
        ((and (awalbulan tanggal) (bulan30 temp)) (list 30 (month temp) (year tanggal)))
        ((and (awalbulan tanggal) (bulan31 temp)) (list 31 (month temp) (year tanggal)))
        ((and (awalbulan tanggal) (kabisat tanggal) (= (month temp) 2)) (list 29 (month temp) (year tanggal)))
        ((and (awalbulan tanggal) (not (kabisat tanggal)) (= (month temp) 2)) (list 28 (month temp) (year tanggal)))

        (t (list (- (day tanggal) 1) (month tanggal) (year tanggal)))
    )
)

; fungsi bantuan

; Kabisat itu terjadi ketika tahun dapat dibagi oleh 4 untuk tahun yang bukan abad baru.
; Kabisat itu juga terjadi ketika tahun dapat dibagi 400 untuk tahun yang merupakan abad baru

(defun abadbaru (tanggal)
    (cond
        ((= (mod (year tanggal) 100) 0) T)
    )
)

(defun kabisat (tanggal)
    (cond
        ((and (not (abadbaru tanggal)) (= (mod (year tanggal) 4) 0)) T)
        ((and (abadbaru tanggal) (= (mod (year tanggal) 400) 0)) T)
    )
)

; 1 3 5 7 8 10 12
(defun bulan31 (tanggal)
    (cond
        ((= (month tanggal) 1) T)
        ((= (month tanggal) 3) T)
        ((= (month tanggal) 5) T)
        ((= (month tanggal) 7) T)
        ((= (month tanggal) 8) T)
        ((= (month tanggal) 10) T)
        ((= (month tanggal) 12) T)
    )
)

(defun bulan30 (tanggal)
    (cond
        ((= (month tanggal) 4) T)
        ((= (month tanggal) 6) T)
        ((= (month tanggal) 9) T)
        ((= (month tanggal) 11) T)
    )
)

(defun akhirbulan (tanggal)
    (cond
        ((and (= (day tanggal) 31) (bulan31 tanggal)) T) 
        ((and (= (day tanggal) 30) (bulan30 tanggal)) T) 
        ((and (= (day tanggal) 29) (kabisat tanggal)) T) 
        ((and (= (day tanggal) 28) (not (kabisat tanggal))) T) 
    )
)

(defun akhirtahun (tanggal)
    (cond
        ((and (= (month tanggal) 12) (= (day tanggal) 31)) T)
    )
)

(defun awalbulan (tanggal)
    (cond
        ((= (day tanggal) 1) T)
    )
)

(defun awaltahun (tanggal)
    (cond
        ((and (awalbulan tanggal) (= (month tanggal) 1)) T)
    )
)



; testcase

; test case 1 --> t1

(setq t1 (makedate 1 1 2001)) 
(setq t2 (makedate 9 5 2003)) 
(setq t3 (makedate 1 12 2003)) ; 30 11 2003
(setq t4 (makedate 1 9 2003)) ; 31 8 2003
(setq t5 (makedate 1 3 2004)) ; 29 2 2004
(setq t6 (makedate 28 2 2004)) ; kabisat --> 29 2 2004
(setq t7 (makedate 1 3 2003)) ; bukan kabisat


