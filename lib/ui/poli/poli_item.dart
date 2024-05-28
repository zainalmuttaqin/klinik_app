import 'package:flutter/material.dart'; // Mengimpor pustaka 'flutter/material.dart' yang diperlukan untuk mengembangkan aplikasi Flutter.
import '../../model/poli.dart'; // Mengimpor file 'poli.dart' yang berisi definisi kelas 'Poli'.
import 'poli_detail.dart'; // Mengimpor file 'poli_detail.dart' yang berisi definisi kelas 'PoliDetail'.

class PoliItem extends StatelessWidget {
  // Mendefinisikan kelas 'PoliItem' yang merupakan 'StatelessWidget'.
  final Poli
      poli; // Mendeklarasikan variabel 'poli' yang bertipe 'Poli' sebagai atribut kelas.

  const PoliItem({Key? key, required this.poli})
      : super(
            key:
                key); // Membuat konstruktor untuk kelas 'PoliItem' dengan parameter wajib 'poli'.

  @override
  Widget build(BuildContext context) {
    // Mengimplementasikan metode 'build' yang mengembalikan tampilan widget yang akan ditampilkan.
    return GestureDetector(
      // Menggunakan 'GestureDetector' untuk menangkap aksi ketika widget ditekan.
      child: Card(
        // Menggunakan 'Card' sebagai tampilan kartu.
        child: ListTile(
          // Menggunakan 'ListTile' sebagai tampilan baris dalam kartu.
          title: Text(
              "${poli.namaPoli}"), // Menampilkan teks 'namaPoli' dari objek 'poli' menggunakan widget 'Text'.
        ),
      ),
      onTap: () {
        // Menambahkan aksi ketika kartu ditekan.
        Navigator.push(
          // Menggunakan 'Navigator.push' untuk berpindah ke halaman baru.
          context,
          MaterialPageRoute(
              builder: (context) => PoliDetail(
                  poli:
                      poli)), // Membuat halaman baru 'PoliDetail' dengan mengirimkan objek 'poli'.
        );
      },
    );
  }
}
