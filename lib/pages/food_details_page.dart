import 'package:flutter/material.dart';
import 'package:sushi_app/models/food.dart';

class FoodDetailsPage extends StatefulWidget {
  final Food food;
  const FoodDetailsPage({super.key, required this.food});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Image.asset(widget.food.imagePath, height: 200),
                const SizedBox(height: 25),
                Row()
              ],
            ),
          )
        ],
      ),
    );
  }
}
