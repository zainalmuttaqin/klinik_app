import 'package:flutter/material.dart';
import '../../model/poli.dart';
import '/ui/poli/poli_detail.dart';

// Kelas PoliUpdateForm adalah StatefulWidget yang digunakan untuk menampilkan form update poli
class PoliUpdateForm extends StatefulWidget {
  final Poli poli; // Objek Poli yang akan diupdate

  const PoliUpdateForm({Key? key, required this.poli}) : super(key: key);

  @override
  _PoliUpdateFormState createState() => _PoliUpdateFormState();
}

// Kelas _PoliUpdateFormState adalah State dari PoliUpdateForm
class _PoliUpdateFormState extends State<PoliUpdateForm> {
  final _formKey = GlobalKey<FormState>(); // GlobalKey untuk form
  final _namaPoliCtrl =
      TextEditingController(); // Controller untuk TextField Nama Poli

  @override
  void initState() {
    super.initState();
    // Mengisi nilai awal TextEditingController dengan nilai Nama Poli dari objek Poli
    setState(() {
      _namaPoliCtrl.text = widget.poli.namaPoli;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Menampilkan Scaffold dengan AppBar dan Form
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ubah Poli"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Memanggil fungsi _fieldNamaPoli() untuk membuat TextField Nama Poli
              _fieldNamaPoli(),
              const SizedBox(height: 20),
              // Memanggil fungsi _tombolSimpan() untuk membuat tombol Simpan Perubahan
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

  // Fungsi untuk membuat tombol Simpan Perubahan
  Widget _tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        // Membuat objek Poli baru dengan nilai Nama Poli dari TextField
        Poli poli = Poli(namaPoli: _namaPoliCtrl.text);
        // Kembali ke halaman sebelumnya (PoliDetail)
        Navigator.pop(context);
        // Navigasi ke PoliDetail dengan data poli yang baru diubah
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => PoliDetail(poli: poli)),
        );
      },
      child: const Text("Simpan Perubahan"),
    );
  }
}
