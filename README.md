# Laporan Tugas UAS TESTING QA - Mohamad Ilman Huda

## Biodata
Nama : Mohamad Ilman huda \
Kelas : 07TPLE007 \
Mata Kuliah : Testing QA \
URL WEB : https://github.com/hudilman/spk-saw  atau
URL HOSTING : https://spk.mohamadilmanhuda.my.id/  

## Penjelasan
Disini saya menjalankan automasi web spk yang saya buat menggunakan framework codeigniter, disini yang saya test antara lain :
- gagal login
- berhasil login
- pergi kehalaman alternative
- klik modal tambah data alternative
- isi name
- submit kemudian post data ke database
- logout

## Hasil Test CMD
![hasil test](https://github.com/hudilman/web-automation-spk-saw/blob/main/test%20cmd.PNG?raw=true)

## Install requirements

  ### Install, create and activate virtualenv

https://medium.com/analytics-vidhya/virtual-environment-6ad5d9b6af59


### Install requirements

    pip install -r requirements.txt

### Install chromedriver
go visit the official web 
https://chromedriver.chromium.org/downloads

## Setup Web
for this test we're using laravel web for testing
you can visit here, to access the repository
[https://github.com/agungperdananto/laravel-web](https://github.com/hudilman/spk-saw)
  

## Run test
run web app at localhost using port 8000.

to run test use this command line

    robot project-demo/test-suite-1.robot

the result will generate at **results** directory

### Robot framework docs
https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
