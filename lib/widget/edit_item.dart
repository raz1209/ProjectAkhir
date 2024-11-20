import 'package:flutter/material.dart';

class EditItem extends StatelessWidget {
  final Widget widget; // Widget yang akan ditampilkan
  final String title; // Judul dari item

  const EditItem({
    super.key, 
    required this.widget, 
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Bagian kiri: Teks sesuai dengan title yang diterima
        Expanded(
          flex: 2, // Mengatur proporsi lebar kolom teks
          child: Text(
            title, // Menggunakan title dari parameter
            style: const TextStyle(
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
        ),
        
        const SizedBox(width: 40),
         Expanded(
          flex: 5, 
          child: widget, 
        ),
      ],
    );
  }
}
