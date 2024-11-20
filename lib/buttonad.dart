import 'package:flutter/material.dart';

Widget buttonadd() {
  return Padding(
    padding: const EdgeInsets.fromLTRB(25, 5, 25, 10),
    child: SizedBox(
      width: 100,
      height: 170,
      child: Card(
        child: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(colors: [
                    Colors.blue.withOpacity(1),
                    Colors.lightBlue.withOpacity(0.5)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Tambah Ruangan",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}