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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  Image.asset(widget.food.imagePath, height: 200),
                  const SizedBox(height: 25),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange[400],
                      ),
                      const SizedBox(width: 10),
                      Text(
                        widget.food.rating,
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    widget.food.name,
                    style: const TextStyle(fontSize: 28),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "Description",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
