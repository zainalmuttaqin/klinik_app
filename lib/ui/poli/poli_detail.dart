import 'package:flutter/material.dart';
import 'poli_update_form.dart';
import '../../model/poli.dart';

// Widget PoliDetail untuk menampilkan detail dari sebuah poli
class PoliDetail extends StatefulWidget {
  final Poli poli; // Poli yang akan ditampilkan

  const PoliDetail({super.key, required this.poli});

  @override
  State<PoliDetail> createState() => _PoliDetailState();
}

class _PoliDetailState extends State<PoliDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Poli")),
      body: Column(
        children: [
          const SizedBox(height: 20),
          // Menampilkan nama poli
          Text(
            "Nama Poli : ${widget.poli.namaPoli}",
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          // Baris untuk tombol Ubah dan Hapus
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _tombolUbah(), // Memanggil fungsi untuk tombol Ubah
              _tombolHapus(), // Memanggil fungsi untuk tombol Hapus
            ],
          )
        ],
      ),
    );
  }

  // Fungsi untuk membuat tombol Ubah
  Widget _tombolUbah() {
    return ElevatedButton(
      onPressed: () {
        // Navigasi ke halaman PoliUpdateForm dengan membawa objek poli
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PoliUpdateForm(poli: widget.poli),
          ),
        );
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
      child: const Text("Ubah"),
    );
  }

  // Fungsi untuk membuat tombol Hapus
  Widget _tombolHapus() {
    return ElevatedButton(
      onPressed: () {
        // Kode untuk menghapus poli
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
      child: const Text("Hapus"),
    );
  }
}
