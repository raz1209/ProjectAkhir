import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/buttonad.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/slider.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/ruangan.dart'; 

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                InkWell( // Membuat foto profil bisa ditekan
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AccountScreen(), // Pindah ke AccountScreen
                      ),
                    );
                  },
                  child: Container(
                      padding: const EdgeInsets.all(10),
                      width: 80,
                      height: 80,
                      child: const CircleAvatar(
                        backgroundImage: CachedNetworkImageProvider(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9wLlnnSwZ5WKr_g9GHwiE3CTrlugx92zuzw&s"),
                      ),),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: SizedBox(
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Raditya",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold)),
                        Text(
                          DateFormat('dd-MM-yyyy').format(DateTime.now()),
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotifTap(), // Pastikan NotifTap ada
                      ),
                    );
                  },
                  child: const SizedBox(
                    width: 80,
                    height: 80,
                    child: Icon(Icons.circle_notifications_sharp),
                  ),
                ),
              ],
            ),
          ),
          basicdemo(),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 30, 25, 10),
            child: Row(
              children: [
                ruangan("living.png", "Ruang Tamu", context, const Homepage()),
                const SizedBox(width: 20),
                ruangan("bed.png", "Kamar Tidur", context, const Homepage()),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
            child: Row(
              children: [
                ruangan("kitchen.png", "Dapur", context, const Homepage()),
                const SizedBox(width: 20),
                ruangan("toilet.png", "Toilet", context, const Homepage()),
              ],
            ),
          ),
          buttonadd(),
        ],
      ),
    );
  }
}
