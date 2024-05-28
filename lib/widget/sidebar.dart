import 'package:flutter/material.dart';
import '../ui/beranda.dart';
import '../ui/login.dart';
import '../ui//poli/poli_page.dart';

// Kelas Sidebar yang merupakan StatelessWidget
class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Mengembalikan Drawer dengan ListView
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Menampilkan header Drawer dengan informasi akun
          UserAccountsDrawerHeader(
            accountName: Text("Admin"),
            accountEmail: Text("admin@admin.com"),
          ),
          // Menampilkan ListTile untuk menu Beranda
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Beranda"),
            onTap: () {
              // Navigasi ke halaman Beranda
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Beranda()),
              );
            },
          ),
          // Menampilkan ListTile untuk menu Poli
          ListTile(
            leading: Icon(Icons.accessible),
            title: Text("Poli"),
            onTap: () {
              // Navigasi ke halaman PoliPage
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PoliPage()),
              );
            },
          ),
          // Menampilkan ListTile untuk menu Pegawai
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Pegawai"),
            onTap: () {
              // Navigasi ke halaman terkait Pegawai (belum diimplementasikan)
            },
          ),
          // Menampilkan ListTile untuk menu Pasien
          ListTile(
            leading: Icon(Icons.account_box_sharp),
            title: Text("Pasien"),
            onTap: () {
              // Navigasi ke halaman terkait Pasien (belum diimplementasikan)
            },
          ),
          // Menampilkan ListTile untuk menu Keluar
          ListTile(
            leading: Icon(Icons.logout_rounded),
            title: Text("Keluar"),
            onTap: () {
              // Navigasi kembali ke halaman Login
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
