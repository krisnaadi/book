# CRUD Buku

ini adalah jawaban untuk soal no. 9 dari Fullstack Engineer Test

cara menjalankan

1. clone project dengan menjalankan perintah
```
git clone https://github.com/krisnaadi/book-list.git
```

2. install dependency 
```
composer install
```

3. copy .env.example ke .env
```
cp .env.example .env
```

4. generate key
```
php artisan key:generate
```

5. bisa langsung import book.sql ke database dengan nama book atau dapat membuat database kosong dengan nama book kemudian migrate dengan command dibawah
```
php artisan migrate:fresh --seed
```