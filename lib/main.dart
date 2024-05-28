import 'package:flutter/material.dart';
import 'ui/beranda.dart';

// Fungsi main yang merupakan entry point program
void main() {
  // Menjalankan aplikasi Flutter
  runApp(const MyApp());
}

// Kelas MyApp yang merupakan StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengembalikan MaterialApp dengan beberapa konfigurasi
    return const MaterialApp(
      // Menyembunyikan banner DEBUG
      debugShowCheckedModeBanner: false,
      // Judul aplikasi
      title: 'Klinik',
      // Mengatur halaman awal aplikasi
      home: Beranda(),
    );
  }
}
