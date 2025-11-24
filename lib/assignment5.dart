import 'package:flutter/material.dart';

class Setimages extends StatelessWidget {
  const Setimages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("welcome to Jogonnath home page", style: TextStyle(fontSize: 20)),

            Image.asset(
              'assets/images/front.jpg',
              height: 500,
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
