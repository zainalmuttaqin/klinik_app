import 'package:flutter/material.dart'; // Mengimpor pustaka 'flutter/material.dart' yang diperlukan untuk mengembangkan aplikasi Flutter.
import '../model/poli.dart'; // Mengimpor file 'poli.dart' dari lokasi yang sesuai.
import 'poli_detail.dart'; // Mengimpor file 'poli_detail.dart' dari lokasi yang sesuai.
import 'poli_item.dart'; // Mengimpor file 'poli_item.dart' dari lokasi yang sesuai.
import 'poli_form.dart'; // Mengimpor file 'poli_form.dart' dari lokasi yang sesuai.

class PoliPage extends StatefulWidget {
  // Mendefinisikan kelas 'PoliPage' yang merupakan 'StatefulWidget'.
  const PoliPage({Key? key})
      : super(
            key:
                key); // Membuat konstruktor untuk kelas 'PoliPage' dengan parameter opsional 'key'.

  @override
  State<PoliPage> createState() =>
      _PoliPageState(); // Mengimplementasikan metode 'createState' yang mengembalikan instance dari '_PoliPageState'.
}

class _PoliPageState extends State<PoliPage> {
  // Mendefinisikan kelas '_PoliPageState' yang merupakan 'State' dari 'PoliPage'.
  @override
  Widget build(BuildContext context) {
    // Mengimplementasikan metode 'build' yang mengembalikan tampilan widget yang akan ditampilkan.
    return Scaffold(
      // Menggunakan 'Scaffold' sebagai kerangka dasar aplikasi.
      appBar: AppBar(
        // Menampilkan AppBar pada tampilan.
        title: const Text(
            "Data Poli"), // Menampilkan teks "Data Poli" sebagai judul AppBar.
        actions: [
          // Menampilkan aksi pada AppBar.
          GestureDetector(
            // Menggunakan GestureDetector untuk menangani aksi ketika icon ditap.
            child: const Icon(Icons.add), // Menampilkan ikon 'add' pada AppBar.
            onTap: () {
              // Menambahkan fungsi yang akan dijalankan ketika ikon ditap.
              Navigator.push(
                // Menggunakan Navigator untuk berpindah ke halaman 'PoliForm'.
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        // Menggunakan ListView sebagai kontainer untuk menampilkan daftar item.
        children: [
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Anak")), // Menampilkan item PoliItem dengan data poli "Poli Anak".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Kandungan")), // Menampilkan item PoliItem dengan data poli "Poli Kandungan".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli Gigi")), // Menampilkan item PoliItem dengan data poli "Poli Gigi".
          PoliItem(
              poli: Poli(
                  namaPoli:
                      "Poli THT")), // Menampilkan item PoliItem dengan data poli "Poli THT".
        ],
      ),
    );
  }
}
