import 'package:flutter/material.dart';
import 'package:flutter_application_1/login/login.dart';
import 'package:flutter_application_1/versi.dart';
import 'package:flutter_application_1/widget/forward_button.dart';
import 'package:flutter_application_1/widget/setting_item.dart';
import 'package:ionicons/ionicons.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Settings", // Memindahkan teks "Settings" ke AppBar
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true, // Membuat judul berada di tengah
      ),
      body: ListView(
        padding: const EdgeInsets.all(20), // Mengurangi padding agar jarak lebih rapat
        children: [
          const Text(
            "Account",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 15), // Mengurangi jarak antar elemen
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  "Images/avatar.png",
                  width: 70,
                  height: 70,
                ),
                const SizedBox(width: 15), // Mengurangi jarak antar elemen
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Raditya Reandra", // Menggunakan nama yang ada
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8), // Mengurangi jarak antara nama dan deskripsi
                    Text(
                      "Vtuber",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                ForwardButton(onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  LoginPage(),
                    ),
                  );
                }),
              ],
            ),
          ),
          const SizedBox(height: 30), // Mengurangi jarak antar bagian
          SettingItem(
            title: "Language",
            icon: Ionicons.earth,
            bgColor: Colors.red.shade100,
            iconColor: Colors.red,
            value: 'English',
            onTap: () {},
          ),
          const SizedBox(height: 15), // Mengurangi jarak antar elemen
          SettingItem(
            title: "Help",
            icon: Ionicons.nuclear,
            bgColor: Colors.purple.shade100,
            iconColor: Colors.purple,
            onTap: () {},
          ),
          const SizedBox(height: 15), // Mengurangi jarak antar elemen
          SettingItem(
            title: "Info Aplikasi",
            icon: Ionicons.help,
            bgColor: Colors.grey.shade100,
            iconColor: Colors.grey,
            onTap: () {
              // Navigasi ke halaman AboutPage ketika di-tap
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
