import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import intl package

class NotifTap extends StatelessWidget {
  const NotifTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: listView(),
    );
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: const Text("Notification"),
      centerTitle: true, // Membuat judul di tengah
    );
  }

  Widget listView() {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10), // Beri padding untuk seluruh list
      itemBuilder: (context, index) {
        return listViewItem(index);
      },
      separatorBuilder: (context, index) {
        return Divider(height: 0, color: Colors.grey.shade400); // Divider dengan warna abu-abu
      },
      itemCount: 15,
    );
  }

  Widget listViewItem(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Lebih rata margin-nya
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 4,
            spreadRadius: 2,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          prefixIcon(),
          const SizedBox(width: 12), // Tambahkan jarak antara ikon dan teks
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                message(index),
                const SizedBox(height: 5), // Jarak antar teks dan waktu
                timeAndDate(index),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget prefixIcon() {
    return Container(
      height: 50,
      width: 50,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.shade300,
      ),
      child: Icon(
        Icons.notifications,
        size: 28, // Ukuran ikon sedikit lebih besar
        color: Colors.grey.shade700,
      ),
    );
  }

  Widget message(int index) {
    return RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: "Message Title - ", // Teks pesan bold
        style: const TextStyle(
          fontSize: 16, // Ukuran teks lebih besar untuk judul pesan
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: "Notification description goes here.", // Deskripsi lebih singkat
            style: TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.grey.shade800, // Warna teks deskripsi lebih terang
            ),
          ),
        ],
      ),
    );
  }

  Widget timeAndDate(int index) {
    // Contoh DateTime dari sekarang, bisa diganti dengan yang lain
    DateTime now = DateTime.now().subtract(Duration(days: index));
    
    // Gunakan DateFormat dari package intl untuk format tanggal dan jam
    String formattedDate = DateFormat('dd-MM-yyyy').format(now);
    String formattedTime = DateFormat('hh:mm a').format(now); // 'a' untuk AM/PM format

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          formattedDate, // Menggunakan formatted date
          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
        ),
        Text(
          formattedTime, // Menggunakan formatted time
          style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
        ),
      ],
    );
  }
}