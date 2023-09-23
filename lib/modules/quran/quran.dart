import 'package:flutter/material.dart';

class Quran extends StatelessWidget {
  const Quran({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Quran",
        style: TextStyle(
          color: Colors.black,
          fontSize: 50,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
