# <b>Tipe Date</b>

Ini adalah program yang dibuat dari bahasa pemrograman LISP untuk bahan pembelajaran. Adapun fitur dari program ini antara lain:
1. Menerima dan menghasilkan output berupa dd / mm / yy dari user. Dengan dd = tanggal, mm = bulan, dan yy = tahun.
2. Menentukan tanggal dari input pengguna.
3. Menentukan bulan dari input pengguna.
4. Menentukan tahun dari input pengguna.
5. Menentukan apakah tahun yang diinput pengguna adalah tahun kabisat atau tidak.
6. Menentukan tanggal berikutnya dari input pengguna.
7. Menentukan tanggal sebelumnya dari input pengguna.
8. Menentukan apakah tanggal-1 sama dengan tanggal-2. Dengan *tanggal-1* adalah tanggal yang didefinisikan pertama kali oleh pengguna, kemudian *tanggal-2* adalah tanggal yang didefinisikan oleh pengguna untuk kedua kalinya.
9. Menentukan apakah tanggal-1 sebelum tanggal-2. Dengan *tanggal-1* adalah tanggal yang didefinisikan pertama kali oleh pengguna, kemudian *tanggal-2* adalah tanggal yang didefinisikan oleh pengguna untuk kedua kalinya.

## <b>How to Use?</b>

1. Buka CLISP.
2. Load file tiden.lsp
3. Definisikan tanggal yang ingin kalian masukkan dengan cara:
   ```
   (setq nama-fungsi-1 (makedate dd1 mm1 yy1))
   (setq nama-fungsi-2 (makedate dd2 mm2 yy2))
   .
   .
   .
   dst
   ```
   - nama-fungsi-1 = nama fungsi yang kalian inginkan
   - nama-fungsi-2 = nama fungsi yang kalian inginkan 2
   - dd1 = tanggal-1
   - dd2 = tanggal-2
   - mm1 = bulan-1
   - mm2 = bulan-2
   - yy1 = tahun-1
   - yy2 = tahun-2
4. Gunakan perintah berikut untuk menentukan tanggal.
   ```
   (day nama-fungsi)
   ```
5. Gunakan perintah berikut untuk menentukan bulan.
   ```
   (month nama-fungsi)
   ```
6. Gunakan perintah berikut untuk menentukan tahun.
   ```
   (year nama-fungsi)
   ```
7. Gunakan perintah ini untuk menentukan apakah tahun yang kalian input kabisat atau tidak.
   ```
   (kabisat nama-fungsi)
   ```
8. Gunakan perintah berikut untuk mementukan tanggal esok.
   ```
   (nextday nama-fungsi)
   ```
9. Gunakan perintah berikut untuk menetukan tanggal sebelumnya.
    ```
    (yesterday nama-fungsi)
    ```
10. Gunakan perintah berikut untuk mementukan apakah tanggal-1 = tanggal-2
    ```
    (iseqd nama-fungsi-1 nama-fungsi-2)
    ```
11. Gunakan perintah berikut untuk menentukan apakah tanggal-1 sebelum tanggal-2
    ```
    (isbefore nama-fungsi-1 nama-fungsi-2)
    ```

## <b>About Me</b>

I'm a student at Del Institute of Technology. <br>
Bachelor of Informatics study program. <br>


<button><a href="https://www.instagram.com/gabrielhtg77/">My Instagram</a></button>
<br>
<button><a href="https://www.del.ac.id/">Institut Teknologi Del</a></button>