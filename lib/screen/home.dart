import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          'assets/images/grok-image-d0db6409-2873-41f5-a333-21041a0f556f.jpg',
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),
      ],
      ),
    );
  }
}
