import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tentang Aplikasi"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Aplikasi Jejepangan",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                "Versi: 1.0.0", // Sesuaikan versi dengan versi aplikasi Anda
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              const Text(
                "Dibuat oleh: Admin RAZ",
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                    context: context,
                    applicationName: "Aplikasi Jejepangan",
                    applicationVersion: "1.0.0", // Sesuaikan dengan versi aplikasi
                    applicationLegalese: "© 2024 Admin RAZ",
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Aplikasi ini bertujuan untuk mendukung komunitas jejepangan seperti anime, cosplay, dan game. Dikembangkan menggunakan Flutter.",
                        ),
                      ),
                    ],
                  );
                },
                child: const Text("Detail Versi"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
