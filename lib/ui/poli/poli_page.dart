import 'package:flutter/material.dart';
import '../../widget/sidebar.dart';
import '../../model/poli.dart';
import 'poli_detail.dart';
import 'poli_item.dart';
import 'poli_form.dart';

// Kelas PoliPage yang merupakan StatefulWidget
class PoliPage extends StatefulWidget {
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

// Kelas _PoliPageState yang merupakan State dari PoliPage
class _PoliPageState extends State<PoliPage> {
  @override
  Widget build(BuildContext context) {
    // Mengembalikan Scaffold dengan Drawer, AppBar, dan ListView
    return Scaffold(
      drawer: const Sidebar(), // Menampilkan Sidebar
      appBar: AppBar(
        title: const Text("Data Poli"), // Judul AppBar
        actions: [
          // Menampilkan tombol tambah di AppBar
          GestureDetector(
            child: const Icon(Icons.add),
            onTap: () {
              // Navigasi ke halaman PoliForm saat tombol diklik
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliForm()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        // Menampilkan daftar poli menggunakan ListView
        children: [
          // Menampilkan PoliItem untuk setiap poli
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      ),
    );
  }
}
