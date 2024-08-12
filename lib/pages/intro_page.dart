import 'package:flutter/material.dart';
import 'package:sushi_app/components/button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 97, 15, 9),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "SUSHI ROOM",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset('lib/images/sushi_set.png')),
            const  Text (
                  "THE TASTE OF JAPANECE FOOD",
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              
            
            const SizedBox(height: 25),
            const Text(
              "the real taste of the most popular Japanice foot from anywhere and anytime",
              style: TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Color.fromARGB(255, 124, 124, 124),
              ),
            ),
            const SizedBox(height: 100),
            const MyButton(text: "Get Started")
          ],
        ),
      ),
    );
  }
}
