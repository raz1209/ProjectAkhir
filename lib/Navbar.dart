import 'package:flutter/material.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'halaman_utama.dart';  // Import halaman utama di sini

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 1; // Menyimpan indeks tab yang dipilih

  // Daftar halaman yang sesuai dengan tab navigasi
  static const List<Widget> _widgetOptions = <Widget>[
    NotifTap(), // Halaman pencarian
    HalamanUtama(),  // Halaman utama
    AccountScreen(), // Halaman profil
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex), // Menampilkan halaman sesuai dengan tab yang dipilih
      ),
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            padding: const EdgeInsets.all(16),
            gap: 10,
            selectedIndex: _selectedIndex,  // Tambahkan ini agar tab aktif sesuai dengan _selectedIndex
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index; // Mengubah halaman ketika tab berubah
              });
            },
            tabs: const [
              GButton(
                icon: Icons.notifications,
                text: 'notifications',
              ),
              GButton(
                icon: Icons.home,
                text: 'home',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
