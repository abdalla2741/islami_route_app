import 'package:flutter/material.dart';

class Radioo extends StatelessWidget {
  const Radioo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Radio",
        style: TextStyle(
            color: Colors.black,
            fontSize: 50,
            fontWeight: FontWeight.bold
        ),
      ),
    );
  }
}
