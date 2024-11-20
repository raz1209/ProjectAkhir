import 'package:flutter/material.dart';

Widget ruangan(String imageIcon, String room, BuildContext context,Widget ruangan) {
  return Flexible(
    flex: 1,
    child: SizedBox(
      height: 170,
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          // Navigasi ke halaman baru ketika widget ditekan
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ruangan),
          );
        },
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.lightBlue,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 70,
                  height: 70,
                  child: Image.asset("Images/$imageIcon"), 
                ),
                Text(
                  room,
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
