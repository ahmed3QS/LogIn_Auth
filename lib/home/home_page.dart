import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
        elevation: 8, // ظل قوي لإبراز الـ AppBar
      ),
      body: Column(
        children: [
          // قسم الرسوم المتحركة (أسفل الـ AppBar)
          Container(
            height: 250,
            child: Center(
              child: Lottie.asset(
                'assets/walking_person.json', // استخدم ملف الرسوم
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
