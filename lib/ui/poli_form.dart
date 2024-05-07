import 'package:flutter/material.dart';  // Mengimpor pustaka 'flutter/material.dart' yang diperlukan untuk mengembangkan aplikasi Flutter.

class PoliForm extends StatefulWidget {  // Mendefinisikan kelas 'PoliForm' yang merupakan 'StatefulWidget'.
  const PoliForm({Key? key}) : super(key: key);  // Membuat konstruktor untuk kelas 'PoliForm' dengan parameter opsional 'key'.

  @override
  _PoliFormState createState() => _PoliFormState();  // Mengimplementasikan metode 'createState' yang mengembalikan instance dari '_PoliFormState'.
}

class _PoliFormState extends State<PoliForm> {  // Mendefinisikan kelas '_PoliFormState' yang merupakan 'State' dari 'PoliForm'.
  final _formKey = GlobalKey<FormState>();  // Membuat GlobalKey untuk mengelola state dari Form.

  @override
  Widget build(BuildContext context) {  // Mengimplementasikan metode 'build' yang mengembalikan tampilan widget yang akan ditampilkan.
    return Scaffold(  // Menggunakan 'Scaffold' sebagai kerangka dasar aplikasi.
      appBar: AppBar(title: const Text("Tambah Poli")),  // Menampilkan AppBar dengan judul "Tambah Poli".
      body: SingleChildScrollView(  // Menggunakan 'SingleChildScrollView' untuk membuat tampilan dapat di-scroll.
        child: Form(  // Menggunakan 'Form' untuk membuat form.
          key: _formKey,  // Menggunakan _formKey sebagai kunci untuk mengelola state form.
          child: Column(  // Menggunakan 'Column' untuk mengatur tata letak vertikal dari widget.
            children: [
              TextField(  // Menampilkan TextField untuk memasukkan nama poli.
                decoration: const InputDecoration(labelText: "Nama Poli"),  // Menampilkan label "Nama Poli" pada TextField.
              ),
              SizedBox(height: 20),  // Membuat jarak vertikal menggunakan 'SizedBox'.
              ElevatedButton(  // Menampilkan ElevatedButton.
                onPressed: () {},  // Menambahkan fungsi kosong untuk aksi button.
                child: const Text("Simpan"),  // Menampilkan teks "Simpan" pada button.
              ),
            ],
          ),
        ),
      ),
    );
  }
}