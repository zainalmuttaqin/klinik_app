import 'package:flutter/material.dart';
import 'package:klinik_app/model/poli.dart';
import 'package:klinik_app/ui/poli/poli_detail.dart';

// Kelas PoliForm merupakan StatefulWidget untuk menampilkan form tambah poli
class PoliForm extends StatefulWidget {
  const PoliForm({Key? key}) : super(key: key);

  @override
  _PoliFormState createState() => _PoliFormState();
}

// Kelas _PoliFormState merupakan State dari PoliForm
class _PoliFormState extends State<PoliForm> {
  // Deklarasi GlobalKey untuk form
  final _formKey = GlobalKey<FormState>();

  // Deklarasi controller untuk TextField Nama Poli
  final _namaPoliCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // Menampilkan Scaffold dengan AppBar dan Form
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tambah Poli"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Memanggil fungsi _fieldNamaPoli() untuk membuat TextField Nama Poli
              _fieldNamaPoli(),
              const SizedBox(height: 20),
              // Memanggil fungsi _tombolSimpan() untuk membuat tombol Simpan
              _tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  // Fungsi untuk membuat TextField Nama Poli
  Widget _fieldNamaPoli() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Nama Poli",
      ),
      controller: _namaPoliCtrl,
    );
  }

  // Fungsi untuk membuat tombol Simpan
  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        // Membuat objek Poli dengan nilai Nama Poli dari TextField
        Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
        // Navigasi ke PoliDetail dengan data poli yang baru dibuat
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
      child: const Text("Simpan"),
    );
  }
}
