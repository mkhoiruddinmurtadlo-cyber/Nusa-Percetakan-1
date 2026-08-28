# Nusa Percetakan – PWA

Paket siap upload ke GitHub Pages. Semua file ikon berada langsung di folder utama (tanpa folder `icons`).

## Upload
1. Ekstrak ZIP.
2. Upload semua file di dalamnya ke repository GitHub.
3. Aktifkan GitHub Pages dari branch utama dan folder root.
4. Buka alamat GitHub Pages di Google Chrome.
5. Pilih **Install app / Tambahkan ke layar utama**.

Splash screen menggunakan latar putih dan logo Nusa Percetakan dari manifest, tanpa animasi tambahan dari aplikasi.


## Sinkronisasi Supabase (1 akun, 2 HP)

1. Buat project gratis di Supabase.
2. Jalankan isi `supabase-setup.sql` di SQL Editor.
3. Buka `supabase-config.js`, isi Project URL dan anon public key dari Settings > API.
4. Di Authentication > Providers > Email, nonaktifkan Confirm email jika ingin login memakai username internal.
5. Di Authentication > Users > Add user, buat akun dengan email `username@nusapercetakan.local` dan password pilihan Anda.
6. Upload semua file ke GitHub Pages.
7. Login di HP 1 dan HP 2 dengan username/password yang sama.

Data katalog dan transaksi disimpan online per akun. Logout tidak menghapus data.
