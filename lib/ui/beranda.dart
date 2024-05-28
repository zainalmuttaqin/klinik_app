import 'package:flutter/material.dart';
import '../widget/sidebar.dart';

// Kelas Beranda yang merupakan StatelessWidget
class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    // Mengembalikan Scaffold dengan AppBar dan body
    return Scaffold(
      // Mengatur AppBar dengan judul "Beranda"
      appBar: AppBar(
        title: const Text("Beranda"),
      ),
      // Meletakkan konten di tengah layar
      body: Center(
        // Menampilkan teks "Selamat Datang"
        child: const Text("Selamat Datang"),
      ),
    );
  }
}
